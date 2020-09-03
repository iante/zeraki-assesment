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
public class solution1 {
    private static int missing(int k[]){
        
        //Getting length of all numbers in the array including the missing number
        
        int n = k.length + 1;
        
        // I am getting the sum of all numbers in the array after which i will get sum of nom in array without the missing number and subtract the two sums to get the missing number
        int sum = n * (n + 1) / 2;
        
        for(int secondSum : k)
        sum -= secondSum;
        
        return sum;
    }
    
    //Creating the main method and calling the missing method in order to find the missing number
    public static void main(String[] args){
        int k[] = {3,5,4,1};
       System.out.println ("The missing number is :" + missing(k));
    }
    }
    

