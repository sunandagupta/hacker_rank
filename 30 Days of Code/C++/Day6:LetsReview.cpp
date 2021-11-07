/*
Objective
Today we will expand our knowledge of strings, combining it with what we have already learned about loops. Check out the Tutorial tab for learning materials and an instructional video.

Task
Given a string, , of length  that is indexed from  to , print its even-indexed and odd-indexed characters as  space-separated strings on a single line (see the Sample below for more detail).

Note:  is considered to be an even index.

Example


Print abc def

Input Format

The first line contains an integer,  (the number of test cases).
Each line  of the  subsequent lines contain a string, .

Constraints

Output Format

For each String  (where ), print 's even-indexed characters, followed by a space, followed by 's odd-indexed characters.

Sample Input

2
Hacker
Rank
Sample Output

Hce akr
Rn ak
*/


#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    
    int T;
    cin>>T;
    
    if(T>=1 && T<=10){
        
        for(int i=0; i<T; i++){
            string s;
            cin>>s;
            
            for (int j = 0; j < s.length(); j++){
                if (j % 2 == 0){
                    cout<<s[j];
                }
            }

            cout << " ";

            for (int j = 0; j < s.length(); j++) {
                if (j % 2 != 0){
                    cout<<s[j];
                }
            }

            cout << endl;
        }
    }
  
    return 0;
}
