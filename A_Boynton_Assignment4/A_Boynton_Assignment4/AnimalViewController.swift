//
//  AnimalViewController.swift
//  A_Boynton_Assignment4
//
//  Created by Allen Boynton on 9/24/15.
//  Copyright © 2015 Full Sail University. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {

    // Local variables
    var name:   String = ""
    var vaca:   String = ""
    var animal: String = ""
    

    @IBOutlet var animalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalLabel.text = "\(name) the \(animal) will be flying to \(vaca) for 1 month! WooHoo!!"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
