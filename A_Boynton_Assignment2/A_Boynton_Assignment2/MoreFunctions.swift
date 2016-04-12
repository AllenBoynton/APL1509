//  MoreFunctions.swift
//  A_Boynton_Assignment2
//
//  Created by Allen Boynton on 9/10/15.
//  Copyright /Users/aboynton/Full Sail/Current Class/Apple Programming OC 1509/APL1509_Repos/A_Boynton_Assignment2/A_Boynton_Assignment2/MoreFunctions.swift(c) 2015 Full Sail University. All rights reserved.

import Foundation

// Create a function called 'compare' that takes two Int parameters and returns a Bool type.
class BoolFunction
{
    // Local properties
    let firstNum : Int
    let secondNum : Int
    
    // Method creating function
    func compare(firstNum: Int, secondNum: Int) -> Bool
    {
        if firstNum == secondNum
        {
            return true
        } else {
            return false
        }
    }
    
    // Initializers
    init()
    {
        firstNum = 0
        secondNum = 0
    }
    
    // Use of initializer
    init(firstNum : Int, secondNum : Int)
    {
        self.firstNum = Int(firstNum)
        self.secondNum = Int(secondNum)
    }
}

// Create a function called 'concat'
class StringFunction
{
    // Parameters
    let string1 : String
    let string2 : String
    
    // This function will take two String parameters and return a new String
    func concat(string1 : String, string2 : String) -> String
    {
        return string1 + " " + string2
    }
    
    init(string1: String, string2: String)
    {
        self.string1 = String(string1)
        self.string2 = String(string2)
    }
}
