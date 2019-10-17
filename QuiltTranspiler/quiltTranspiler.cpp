#include <iostream>
#include <vector>
#include <string>
#include <regex>
#include <iomanip>
#include <fstream>

using namespace std;

typedef enum { QLIT,ID,KEYWORD,EQUALS,COMMA,OPEN_PAREN,CLOSE_PAREN,EOL } TokenType;

class Token {
    public:
    TokenType type;
    string value;
    Token(TokenType newType=EOL,string newValue="") {
      type=newType;
      value=newValue;  
    }
    void output(ostream &out) { out << type << ' ' << value << endl; }
};

class Tokenizer{
    string line;
    unsigned pos;
    unsigned lineNumber;
    public:
    int getPosition() { return pos; }
    int getLineNumber() { return lineNumber; }
    void start(string newLine) {
        line=newLine;
        pos=0;
        lineNumber=1;
    }
    Token peek() {
        smatch sm;
        string remaining=line.substr(pos);
        while (remaining[0]==' ' || remaining[0]=='\t') {
          if (remaining[0]=='\t') lineNumber++;
		  pos++;
          remaining=line.substr(pos);
		}
		//cerr << remaining << endl;
        if (regex_match(remaining,sm,regex("(a|b).*"))) 
          return Token(QLIT,sm[1]);
        if (regex_match(remaining,sm,regex("((let)|(fun)|(turn)|(sew)|(val)|(in)|(end)).*")))
          return Token(KEYWORD,sm[1]);
        if (regex_match(remaining,sm,regex("([a-z]+).*"))) 
          return Token(ID,sm[1]);
        if (regex_match(remaining,sm,regex("(=).*"))) 
          return Token(EQUALS,sm[1]);
        if (regex_match(remaining,sm,regex("(\\,).*"))) 
          return Token(COMMA,sm[1]);
        if (regex_match(remaining,sm,regex("(\\().*"))) 
          return Token(OPEN_PAREN,sm[1]);
        if (regex_match(remaining,sm,regex("(\\)).*"))) 
          return Token(CLOSE_PAREN,sm[1]);
        return Token();
    }
    void output(ostream &out) {
		cout << line << endl;
        unsigned l=0;
        for (unsigned j=0;j<lineNumber-1;j++) 
          while (l<line.size()) {
              if (line[l]=='\t') break;
              l++;
          }
        l+=pos+(lineNumber)*9;  
		cout << setw(l) << '^'<< endl;
	}
    Token next() {
        Token t;
        t=peek();
        pos+=t.value.size();
        return t;
    }
};

class ExpressionTree{
    ExpressionTree *left,*right;
    vector<ExpressionTree *> parameters;
    Token operation;
    public:
    ExpressionTree(Token t=Token(),ExpressionTree *newLeft=NULL,ExpressionTree *newRight=NULL){
        operation=t;
        left=newLeft;
        right=newRight;
    }
    void setArguments(vector<ExpressionTree *> newParameters){
		parameters=newParameters;
	}
    void showRPN(ostream &out) {
        if (left!=NULL) left->showRPN(out);
        if (right!=NULL) right->showRPN(out);
        out << operation.value;
    }
    void show(ostream &out) {
        if (left!=NULL) {
			left->show(out);
			out << "<--";
		}
        out << "[" <<operation.value<<"]"; 
        if (right!=NULL) {
			out <<
			"-->";
			right->show(out);
		}
		if (parameters.size()>0) {
			out << '(' ;
			for (unsigned int i=0;i<parameters.size();i++)
				parameters[i]->show(out);
            out << ')' <<endl;
		}
    }
};

class SymbolEntry {
	public:
	vector<string> parameters;
	ExpressionTree *expression;	
};

typedef map <string, SymbolEntry > SymbolTable;
SymbolTable symbolTable;
typedef SymbolTable::iterator symbolIterator;
ExpressionTree *inStatement;

void summary(ostream &out) {
    out << endl<< "Syntax Expression Tree Summary" <<endl;
    out << setfill('-') << setw(20) << ' ' <<endl;
	for (symbolIterator i=symbolTable.begin();i!=symbolTable.end();i++) {
		out << "Symbol: "<< i->first;
        if (i->second.parameters.size()>0) {
		  out << " Fun" << '(';
		  for (unsigned int j=0;j< i->second.parameters.size();j++) {
			if (j>0) cout << ", ";
			out << i->second.parameters[j];
		  }
		  out << ')' << endl;
        } else 
          out << " Val" << endl;
		i->second.expression->show(out);
		out << endl;
	}
    out << "In ";
	inStatement->show(out);
    out << endl;
    out << setfill('-') << setw(20) << ' ' <<endl;
}

class Parser{
    Tokenizer tokenizer;
    vector<string> errors;
    public:
    bool expression(ExpressionTree &tree) {
        Token t=tokenizer.next();
        if (t.type==QLIT) {
            if (t.value=="a") 
                tree=ExpressionTree(t);
            if (t.value=="b") 
                tree=ExpressionTree(t);
            return true;
        }
        if (t.type==ID) {
            Token node=t;
            t=tokenizer.peek();
            if (t.type==OPEN_PAREN) {
				/* function call */
				vector <ExpressionTree *> parameters;
				t=tokenizer.next();
				while (true) {
					ExpressionTree *subtree=new ExpressionTree();
					if (expression(*subtree)){
						parameters.push_back(subtree);
						t=tokenizer.next();
						if (t.type==CLOSE_PAREN) {
							//node.output(cout);
							tree=ExpressionTree(node);
							tree.setArguments(parameters);
							return true;
						} 
						if (t.type!=COMMA) {
							errors.push_back("Expected ) or , in function call");
							return false;
						}
					}
				}
			} else  {
			  tree=ExpressionTree(node);
              return true;
		    }
        }
        if (t.type==KEYWORD && t.value=="turn") {
			Token node=t;
            t=tokenizer.next();
            if (t.type==OPEN_PAREN) {
                ExpressionTree *subtree=new ExpressionTree();
                if (expression(*subtree)) {
                    t=tokenizer.next();
                    if (t.type==CLOSE_PAREN){
                        tree=ExpressionTree(node,NULL,subtree);
                        return true;
                    }
                    errors.push_back("Expected )");
                    return false;
                }
                errors.push_back("Expected Expression");
                return false;
            }
            errors.push_back("Expected (");
            return false;
        }
        if (t.type==KEYWORD && t.value=="sew") {
			Token node=t;
            t=tokenizer.next();
            if (t.type==OPEN_PAREN) {
                ExpressionTree *first=new ExpressionTree();
                if (expression(*first)) {
					//cout << "Checking left of sew " << endl;
					//first->show(cout);
                    t=tokenizer.next();
                    if (t.type==COMMA){
                      ExpressionTree *second=new ExpressionTree();
                      if (expression(*second)) {
                        t=tokenizer.next();
                        if (t.type==CLOSE_PAREN){
                            tree=ExpressionTree(node,first,second);
                            return true;
                        }
                        errors.push_back("Expected )");
                        return false;
                      }
                      errors.push_back("Expected expression");
                      return false;
                    }
                    errors.push_back("Expected ,");
                    return false;
                }
                errors.push_back("Expected expression");
                return false;
            }
            errors.push_back("Expected (");
            return false;
        }
        errors.push_back("Expected a, b, id, turn, or sew");
        return false;
    }
    bool val() {
        Token t=tokenizer.next();
        if (t.type==KEYWORD && t.value=="val") {
            Token id=tokenizer.next();
            if (id.type==ID) {
                //string valName=t.value;
                t=tokenizer.next();
                if (t.type==EQUALS) {
                    ExpressionTree *subtree=new ExpressionTree();
                    if (expression(*subtree)) {
                        SymbolEntry se;
                        se.expression=subtree;
                        //cout << "Adding " << id.value << " to symbol table " << endl;
                        symbolTable[id.value]=se;
                        return true;
                    }
                    errors.push_back("Expected expression");
                    return false;
                }
                errors.push_back("Expected = ");
                return false;
            }
            errors.push_back("Expected an identifier");
            return false; 
        }
        errors.push_back("Expected val expression");
        return false;
    }
    bool fun() {
		/* function definition */
        Token t=tokenizer.next();
        if (t.type==KEYWORD && t.value=="fun") {
            Token funid=tokenizer.next();
            if (funid.type==ID) {
                t=tokenizer.next();
                if (t.type==OPEN_PAREN) {
   				    SymbolEntry se;
   				    Token var;
					do {
                      var=tokenizer.next();
                      if (var.type==ID)
						se.parameters.push_back(var.value);
                      var=tokenizer.next();  
                      if (!(var.type==COMMA || var.type==CLOSE_PAREN)) {
                            errors.push_back("Expected a , or ) here");
                            return false;
                      }
                    } while (var.type==COMMA);
                    if (var.type==CLOSE_PAREN) {
                        t=tokenizer.next();
                        if (t.type==EQUALS) {
                            ExpressionTree *subtree=new ExpressionTree();
                            if (expression(*subtree)) {
                                se.expression=subtree;
                               // cout << "Adding " << funid.value << " to symbol table " << endl;
                                symbolTable[funid.value]=se;
                                return true;
                            }
                            errors.push_back("Expected expression");
                            return false;
                        }
                        errors.push_back("Expected =");
                        return false;
                    }
                    errors.push_back("Expected )");
                    return false;
                }
                errors.push_back("Expected (");
                return false;
            }
            errors.push_back("Expected an identifier");
            return false; 
        }
        errors.push_back("Expected fun expression");
        return false;
    }
    bool declarations() {
        Token t=tokenizer.peek();
        while (t.type==KEYWORD && (t.value=="fun" || t.value=="val")) {
          if (t.value=="fun") {
            if (!fun()) {
				errors.push_back("Expected a fun declaration");
				return false;
			}
		  }
          if (t.value=="val") {
            if (!val()) {
				errors.push_back("Expected a val declaration");
				return false;
			}
		  } 
		  t=tokenizer.peek();
        }
        return true;
    }
    bool let() {
        Token t=tokenizer.next();
        if (t.type==KEYWORD && t.value=="let") {
            if (declarations()) {
                t=tokenizer.next();
                if (t.type==KEYWORD && t.value=="in"){
                    ExpressionTree *exp=new ExpressionTree();
                    if (expression(*exp)) {
                        t=tokenizer.next();
                        if (t.type==KEYWORD && t.value=="end") {
                          inStatement=exp;
                          return true;
                        }
                        errors.push_back("Expected end");
                        return false;
                    }
                    errors.push_back("Expected an expression");
                    return false;
                }
                errors.push_back("Expected 'in' keyword");
                return false;
            }
            errors.push_back("Expected declarations");
            return false;
        }
        errors.push_back("Expected let expression");
        return false;
    }
    string error() {
        stringstream ss;
        ss << tokenizer.getLineNumber() << ':' << tokenizer.getPosition()<<endl;
        return ss.str();
    }
    bool scan(string s){
        tokenizer.start(s);
        if (!let()) {
           tokenizer.output(cout);
           for (unsigned i=0;i<errors.size();i++) 
             cerr << errors[i] << endl;
           return false;
        }
        return true;
    }
};

int main(int argc, char **argv) {
    ifstream in;
    stringstream ss;
    in.open(argv[1]);
    while (!in.eof()) {
        string line;
        getline(in,line);
        ss << line << '\t';
    }
    Parser p;
    if (p.scan(ss.str())) {
		cerr << "Good!" << endl;
        summary(cout);
        return 0;
	}
	else {
        cerr << argv[1]<<':'<< p.error() << endl;
		cerr << "Bad!" << endl;
        return 1;
    }
}


/*
   function ted(x,y)
   ted=(x,y)=>{
     document.getElementById(x).innerHTML=y;
} 
 
<svg viewBox="-40 0 150 100" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
  <g transform="rotate(-10 50 100)
                translate(0 10)">
    <rect id="a" x = "0" y = "0" width = "20" height = "20" fill = "tomato" stroke = "lightgreen" stroke-width = "2" />  
    <g transform="rotate(-10 50 100)
                translate(10 0)">
      <use xlink:href="#a"/>
    </g>  
  </g>
  <use xlink:href="#a"/>
</svg>
*/
