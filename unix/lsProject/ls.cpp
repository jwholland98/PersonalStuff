#include <iostream>
#include <dirent.h>
#include <string>
#include <cstring>
#include <fstream>
#include <iomanip>

using namespace std;

int deep=0;

void read(bool recurse=false, const char* path=".");

int getSize(const char* file){
    std::ifstream in_file(file, std::ios::binary);
    in_file.seekg(0, std::ios::end);
    int file_size = in_file.tellg();
    return file_size;
}

void isDir(const char* name){
    DIR *dir = NULL;
    dir = opendir(name);
    string tmpname=name;
    if(dir!=NULL && tmpname!="." && tmpname!=".."){
        closedir(dir);
        deep++;
        char buffer[100];
        char slash[100];
        strncpy(buffer,name, 100);
        strncpy(slash, "/", 100);
        strncat(buffer, slash, 100);
        read(true, buffer);
        deep--;
    }
}

void read(bool recurse, const char* path){
    DIR *dir = NULL;
    struct dirent *ent = NULL;
    dir = opendir(path);
    while (ent = readdir(dir)){
        if(recurse){
            if(deep<1){
                isDir(ent->d_name);
                cout << left << setw(6) << getSize(ent->d_name) << left << setw(8) << 'B';
                for(int i=0;i<deep;i++)
                    cout << "    ";
                cout << ent->d_name << endl;
            }
            else{
                char prefix[100];
                strncpy(prefix, path, 100);
                strncat(prefix,ent->d_name, 100);
                cout << left << setw(6) << getSize(prefix) << left << setw(8) << 'B';
                for(int i=0;i<deep;i++)
                    cout << "    ";
                cout << ent->d_name << endl;
                if(ent->d_name[strlen(ent->d_name)-1]!='.')
                    isDir(prefix);
            }
        }
        else
            cout << ent->d_name << endl;
    }
    closedir(dir);
}

int main(int argc, char *argv[]){
    if (argc > 1 && strncmp(argv[1], "-r", 2) == 0){
        read(true);
    }
    else
        read(false);
    return 0;
}