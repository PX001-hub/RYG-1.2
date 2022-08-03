//
//  ViewController.swift
//  RYG 1.2
//
//  Created by P Z on 31/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorViewRed: UIView!
    @IBOutlet var colorViewYellow: UIView!
    @IBOutlet var colorViewGreen: UIView!
    
    @IBOutlet var colorButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorButton.layer.cornerRadius = 10
        
        colorViewRed.alpha = lightIsOff
        colorViewYellow.alpha = lightIsOff
        colorViewGreen.alpha = lightIsOff
        
        print("Размер стороны, доступный в методе viewDidLoad: \(colorViewRed.frame.height)")
    }
        
    override func viewWillLayoutSubviews() {
        
        colorViewRed.layer.cornerRadius = colorViewGreen.frame.width / 2
        colorViewYellow.layer.cornerRadius = colorViewYellow.frame.width / 2
        colorViewGreen.layer.cornerRadius = colorViewGreen.frame.width / 2
        
        print ("Размер стороны, доступный в методе viewWillLayoutSubviews: \(colorViewRed.frame.height)")
        
        colorButton.tintColor = .white
        colorButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        colorButton.layer.cornerRadius = 20
        
    }
    
   @IBAction func tapColorsButton() {
       
       if colorButton.currentTitle == "START" {
           colorButton.setTitle("NEXT", for: .normal)
       }
       
           if colorViewRed.alpha == 1 {
               colorViewRed.alpha = 0.3
               colorViewYellow.alpha = 1
           } else if colorViewYellow.alpha == 1 {
               colorViewYellow.alpha = 0.3
               colorViewGreen.alpha = 1
           } else if colorViewGreen.alpha == 1 {
               colorViewGreen.alpha = 0.3
               colorViewRed.alpha = 1
           } else {
               colorViewRed.alpha = 1
           }
    }
   }


