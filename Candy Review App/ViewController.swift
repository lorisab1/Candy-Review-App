//
//  ViewController.swift
//  Candy Review App
//
//  Created by Lorisa Bulosan on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonTitle: UIButton!
   
    @IBOutlet weak var imageViewBG: UIImageView!
    
    @IBOutlet weak var imageViewCandy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewBG.image = UIImage(named: "Halloween Candy BG.png")
        
        imageViewCandy.image = UIImage(named: "M&Ms.jpg")
        
        buttonTitle.setTitle("Learn More", for: UIControl.State.normal)
        
    }
   
    
    @IBAction func learnMoreButton(_ sender: Any)
    {
        
        
        
    } 
    
    
    
}

