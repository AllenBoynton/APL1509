//
//  ViewController.swift
//  A_Boynton_Assignment4
//
//  Created by Allen Boynton on 9/24/15.
//  Copyright © 2015 Full Sail University. All rights reserved.
//

import UIKit


// Global constant
let appAuthor : String = "This application brought to you by: Al Boynton"


class ViewController: UIViewController, UITextFieldDelegate {
    
    
    // Outlets for sign in name and field
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var myName : UILabel!
    
    // Outlets for three text fields on Home page
    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var vacaTextField: UITextField!
    
    @IBOutlet var animalTextField: UITextField!
    

    // Load view
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    
    // Function added in order to return a value if it exists
    func textFieldShouldBeginEditing(userNameTextField: UITextField) -> Bool {
        
        userNameTextField.text = ""
        return true
    }
    
    
    // Added to retract keyboard once value is entered
    func textFieldShouldReturn(userNameTextField: UITextField) -> Bool {
        
        userNameTextField.resignFirstResponder()
        return true
    }
    

    // Add function for segue between text fields and values to corresponding board
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // If statement tells which user window text to send into what string on what board
        if segue.identifier == "toVacationSegue" {
            
            let vacaVC = segue.destinationViewController as! VacationViewController
            
            if nameTextField.text!.characters.count > 0 {
                
                vacaVC.name = nameTextField.text!
            }
            
            if vacaTextField.text!.characters.count > 0 {
                
                vacaVC.vaca = vacaTextField.text!
            }
            
            if animalTextField.text!.characters.count > 0 {
                
                vacaVC.animal = animalTextField.text!
            }
            
            
        } else if segue.identifier == "toAnimalSegue" {
            
            let animalVC = segue.destinationViewController as! AnimalViewController
            
            if nameTextField.text!.characters.count > 0 {
                
                animalVC.name = nameTextField.text!
            }
            
            if vacaTextField.text!.characters.count > 0 {
                
                animalVC.vaca = vacaTextField.text!
            }
            
            if animalTextField.text!.characters.count > 0 {
                
                animalVC.animal = animalTextField.text!
            }
            

        }
        
    }
    
    // Action to add users text into given string
    @IBAction func myClick(sender: AnyObject) {
        
        // Added Optional Binding / Unwrapping in order for text to display
        userNameLabel.text = "Hello \(userNameTextField.text!)! Thank You for playing today!"
        myName.text! = appAuthor
    }
    
    
    // Added info button to toggle on/off the author's info
    @IBAction func infoClick(sender: AnyObject) {
        
        myName.text! = appAuthor
    }
        
        
    // IB action to link close keyboard button to code
    @IBAction func closeKeyboard() {
            
        userNameTextField.resignFirstResponder()
    }
    
    
    // Action added to make use of the back buttons
    @IBAction func backButton(segue: UIStoryboardSegue) {
            
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }


}

