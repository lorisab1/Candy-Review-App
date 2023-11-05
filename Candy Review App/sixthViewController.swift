//
//  sixthViewController.swift
//  Candy Review App
//
//  Created by Lorisa Bulosan on 10/31/23.
//

import UIKit

class sixthViewController: UIViewController {
    
    @IBOutlet weak var headlineLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headlineLabel.text = "M&Ms"
        
        imageView.image = UIImage(named: "M&Ms.jpg")
        
        descriptionLabel.text = "M&Ms were the first candy I had as a kid. It was always a delight to check my trick or treat bag and find a packet of M&Ms. There are a variety of flavors. I recommend the original chocolate, peanut butter, pretzel, and caramel cold brew."
        
    }
    


}
