//
//  VacationViewController.swift
//  A_Boynton_Assignment4
//
//  Created by Allen Boynton on 9/24/15.
//  Copyright © 2015 Full Sail University. All rights reserved.
//

import UIKit

class VacationViewController: UIViewController {
    
    // Local variables
    var name:   String = ""
    var vaca:   String = ""
    var animal: String = ""
    

    @IBOutlet var vacaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vacaLabel.text = "\(name) will be travelling to \(vaca) on a \(animal)! What a super time!!"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

