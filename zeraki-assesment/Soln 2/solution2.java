/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.robikan.zeraki;

/**
 *
 * @author Robert ian
 */
public class solution2 {
    
    // I am creating a method rev which accepts the parameters String s,int k, int n
private static String rev(String s, 
                            int k, int n) 
{ 
    
    //looping through each character in the string and reversing them
    for (int i = 0; i < s.length();) 
    { 
  
    //I am checking if k characters starting from the initial position, are greater than the length of the string
        if (i + k > n) 
            break; 
  
        // I am reversing the first group of strings i.e 4 and storing them in a StringBuilder 
        s = s.substring(0, i) + new String(new StringBuilder( 
            s.substring(i, i + k)).reverse()) +  
            s.substring(i + k ); 
        i += 1 * k; 
    } 
    return s; 
} 
  
// This is my main method where i call the rev method to reverse my string based on defined k grouup which in this case is 4
public static void main(String[] args)  
{ 
    String s = "Lorem at"; 
    int n = s.length(); 
    int k = 4; 
    System.out.println(rev(s, k, n)); 
} 
    
}
