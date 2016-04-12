//
//  ViewController.swift
//  Assignment 3
//
//  Created by Allen Boynton on 9/17/15.
//  Copyright (c) 2015 Full Sail University. All rights reserved.
//

import UIKit

// Global variables
var array = ["Coffee","Deathrow","Guards","Healer","Execution"]
var string = ""

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Main background color
        view.backgroundColor = UIColor.darkGrayColor()
        
        // Title label - "The Green Mile"
        let titleLabel = UILabel(frame : CGRectMake(80, 40, 200, 30))
        titleLabel.backgroundColor = .brownColor()
        titleLabel.text = "The Green Mile"
        titleLabel.textColor = .greenColor()
        titleLabel.textAlignment = .Center
        
        
        // Add Author: label view
        let authorLabel = UILabel(frame : CGRectMake(75, 125, 85, 25))
        authorLabel.backgroundColor = .whiteColor()
        authorLabel.text = "Author:"
        authorLabel.textColor = .blueColor()
        authorLabel.textAlignment = .Right
        
        
        // Add Author's name - Stephen King - label view
        let authorName = UILabel(frame : CGRectMake(170, 125, 120, 25))
        authorName.backgroundColor = .blackColor()
        authorName.text = "Stephen King"
        authorName.textColor = .redColor()
        authorName.textAlignment = .Left
        
        
        // Add Publisher: label view
        let publishLabel = UILabel(frame : CGRectMake(75, 175, 85, 25))
        publishLabel.backgroundColor = .whiteColor()
        publishLabel.text = "Published:"
        publishLabel.textColor = .blueColor()
        publishLabel.textAlignment = .Right
        
        
        // Add Published date label view
        let publishText = UILabel(frame : CGRectMake(170, 175, 120, 25))
        publishText.backgroundColor = .blackColor()
        publishText.text = "1996"
        publishText.textColor = .redColor()
        publishText.textAlignment = .Left
        
        
        // Add Summary: label view
        let summaryLabel = UILabel(frame : CGRectMake(75, 260, 85, 25))
        summaryLabel.backgroundColor = .yellowColor()
        summaryLabel.text = "Summary:"
        summaryLabel.textColor = .orangeColor()
        summaryLabel.textAlignment = .Left
        
        
        // Add Book summary label - "The Green Mile"
        let summaryText = UILabel(frame : CGRectMake(50, 285, 275, 180))
        summaryText.text = "John Coffee, a misunderstood, mystical strongman is on deathrow for a crime he may not have committed. As other prisoners and guards either befriend or antagonize him they find that he may just powers beyond belief. "
        summaryText.textColor = .whiteColor()
        summaryText.textAlignment = .Center
        summaryText.numberOfLines = 8
        
        
        // Add List of Items: label view
        let listLabel = UILabel(frame : CGRectMake(75, 480, 120, 25))
        listLabel.backgroundColor = .lightGrayColor()
        listLabel.text = "List of Items:"
        listLabel.textColor = .purpleColor()
        listLabel.textAlignment = .Left
        
        
        // Adding For Loop to array
        for var i = 0; i < array.count; i++ {
            
            // Adds first index
            if i == 0 {
                
                string = string + array[i]
                
                // Adds index 1 through 3 with comma
            } else if i <= 3{
                
                string = string + ", " + array[i]
                
                // Adds last index with 'and'
            } else {
                
                string = string + ", and " + array[i]
                
            }
            
        }
        
        
        // Adding the array of details as a string to text
        let stringText = UILabel(frame : CGRectMake(60, 525, 250, 100))
        stringText.backgroundColor = .greenColor()
        stringText.text = string
        stringText.textColor = .blackColor()
        stringText.textAlignment = .Center
        stringText.numberOfLines = 2
        
        
        
        // Add labels to the subview
        view.addSubview(titleLabel)
        view.addSubview(authorLabel)
        view.addSubview(authorName)
        view.addSubview(publishLabel)
        view.addSubview(publishText)
        view.addSubview(summaryLabel)
        view.addSubview(summaryText)
        view.addSubview(listLabel)
        view.addSubview(stringText)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
