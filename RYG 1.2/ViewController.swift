//
//  ViewController.swift
//  RYG 1.2
//
//  Created by P Z on 31/07/2022.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet var colorViewGreen: UIView!
    @IBOutlet var colorViewPurple: UIView!
    @IBOutlet var colorViewOrange: UIView!
    
    @IBOutlet var colorButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorViewGreen.layer.cornerRadius = 64
        colorViewGreen.alpha = 0.5
        
        colorViewPurple.layer.cornerRadius = 64
        colorViewPurple.alpha = 0.5
        
        colorViewOrange.layer.cornerRadius = 64
        colorViewOrange.alpha = 0.5
        
        colorButton.tintColor = .white
        colorButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        colorButton.layer.cornerRadius = 20
        
    }

    
    @IBAction func tapColorsButton(_ sender: UIButton) {
        
        
    }
    
    
}

