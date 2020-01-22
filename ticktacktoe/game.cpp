#include <iostream>
#include <vector>

using namespace std;

typedef enum{O, X, BLANK}mark;

class Board{
  public://change to private later
    mark board[3][3];
  public:
    Board(){
        for(int i=0;i<3;i++){
            for(int k=0;k<3;k++){
                board[i][k]=BLANK;
            }
        }
    }
    bool winState(){
        //horizontal win
        if(board[0][0]!=BLANK && board[0][0]==board[0][1] && board[0][0]==board[0][2]) return true;
        if(board[1][0]!=BLANK && board[1][0]==board[1][1] && board[1][0]==board[1][2]) return true;
        if(board[2][0]!=BLANK && board[2][0]==board[2][1] && board[2][0]==board[2][2]) return true;
        //vertical win
        if(board[0][0]!=BLANK && board[0][0]==board[1][0] && board[0][0]==board[2][0]) return true;
        if(board[0][1]!=BLANK && board[0][1]==board[1][1] && board[0][1]==board[2][1]) return true;
        if(board[0][2]!=BLANK && board[0][2]==board[1][2] && board[0][2]==board[2][2]) return true;
        //diagonal win
        if(board[0][0]!=BLANK && board[0][0]==board[1][1] && board[0][0]==board[2][2]) return true;
        if(board[0][2]!=BLANK && board[0][2]==board[1][1] && board[0][2]==board[2][0]) return true;
        return false;
    }
    bool addMark(int row, int column, mark mark){
        if(board[row][column]==BLANK){
            board[row][column]=mark;
            return true;
        }
        else cout << "Please choose an empty space." << endl;
        return false;
    }
};

int main(){
    cout << "Welcome to my Tick-Tack-Toe Game! Help me train my A.I." << endl;
    Board bd;
    /*while(bd.winState()){//main game loop

    }*/
    cout << "yay" << endl;
    return 0;
}
