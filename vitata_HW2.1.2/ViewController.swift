//
//  ViewController.swift
//  vitata_HW2.1.2
//
//  Created by Andrey Tolstov on 5/19/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 40
        yellowLight.layer.cornerRadius = 40
        greenLight.layer.cornerRadius = 40
        switchButton.layer.cornerRadius = 15
    }
    
    @IBAction func switchButtonClicked() {
        
        if (redLight.layer.opacity == 1) {
            redLight.layer.opacity = 0.3
            yellowLight.layer.opacity = 1
            
        } else if (yellowLight.layer.opacity == 1) {
            yellowLight.layer.opacity = 0.3
            greenLight.layer.opacity = 1
            
        } else if (greenLight.layer.opacity == 1) {
            greenLight.layer.opacity = 0.3
            redLight.layer.opacity = 1
        }
        
        // first time click
        if (switchButton.currentTitle != "NEXT") {
            switchButton.setTitle("NEXT", for: .normal)
            redLight.layer.opacity = 1
        }
        
    }
    
}
