/*
A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward.

Given a string A, print Yes if it is a palindrome, print No otherwise.

Constraints

A will consist at most  lower case english letters.
Sample Input

madam
Sample Output

Yes
*/


import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        String A=sc.next();
        /* Enter your code here. Print output to STDOUT. */
        
        if(A.length()<=50){
        
            
            String f= A;
            String b="";
            
            for(int j=A.length()-1; j>=0; j--){
                b = b + A.charAt(j);
            }
           
           
            if(f.equals(b)){
                System.out.println("Yes");
            }
            else{
                System.out.println("No");
            }
        }
          
    }
}

