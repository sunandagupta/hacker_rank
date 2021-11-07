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

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
public class Solution
{
    public static void main(String[] args)
    {
        Scanner scan=new Scanner(System.in);
        int t;
        t=scan.nextInt();
        while(t>0){
            
            String str=scan.next();
            
            for(int i=0;i<str.length();i++){
                
                if(i%2==0){
                    System.out.print(str.charAt(i));
                }   
            }
          
            System.out.print(" ");
            
            for(int i=0;i<str.length();i++){
                
                if(i%2==1){
                    System.out.print(str.charAt(i));
                }   
            }  
            
            System.out.println();
            t=t-1;
        }   
    }
}
