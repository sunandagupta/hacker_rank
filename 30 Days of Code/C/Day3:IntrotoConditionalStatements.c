/*
Objective
In this challenge, we learn about conditional statements. Check out the Tutorial tab for learning materials and an instructional video.

Task
Given an integer, , perform the following conditional actions:

If  is odd, print Weird
If  is even and in the inclusive range of  to , print Not Weird
If  is even and in the inclusive range of  to , print Weird
If  is even and greater than , print Not Weird
Complete the stub code provided in your editor to print whether or not  is weird.

Input Format

A single line containing a positive integer, .

Constraints

Output Format

Print Weird if the number is weird; otherwise, print Not Weird.

Sample Input 0

3
Sample Output 0

Weird
Sample Input 1

24
Sample Output 1

Not Weird
*/


#include <assert.h>
#include <ctype.h>
#include <limits.h>
#include <math.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>




int main()
{
    int n;
    scanf("%d", &n);
    
    if(n%2==0)
        {
            if(n>=2 && n<=5)
                {
                printf("Not Weird");
                }
            else if(n>=6 && n<=20)
                {
                    printf("Weird");
                }
            else if(n>20)
                printf("Not Weird");
        }
    else
    printf("Weird");
    

    return 0;
}
