//
//  ViewController.swift
//  A_Boynton_Assignment3.2
//
//  Created by Allen Boynton on 9/17/15.
//  Copyright (c) 2015 Full Sail University. All rights reserved.
//

import UIKit

// Global variables
var array = ["Apocalyptic","Dauntless","Factionless","Abnegation","Divergents"]
var puncString = ""

class ViewController: UIViewController {
    
    // Label for Storyboard
    @IBOutlet var string : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // For Loop for details array
        for var i = 0; i < array.count; i++ {
            
            // Add first index of array
            if i == 0 {
                
                puncString = puncString + array[i]
                
                // Adds index 1 through 3 with the comma
            } else if i <= 3 {
                
                puncString = puncString + ", " + array[i]
                
                // Adds the last index with the 'and'
            } else {
                
                puncString = puncString + ", and " + array[i]
                string.text = puncString
            }
            
            
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
