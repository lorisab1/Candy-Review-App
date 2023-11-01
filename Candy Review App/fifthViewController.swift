//
//  fifthViewController.swift
//  Candy Review App
//
//  Created by Lorisa Bulosan on 10/31/23.
//

import UIKit

class fifthViewController: UIViewController {

    @IBOutlet weak var headlineLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headlineLabel.text = "Candy Reviewer: Lorisa Bulosan"
        
        descriptionLabel.text = "From when I was a kid till now, I still enjoy eating candy and is willing to try anything that peeks my interest. I may not eat as often as I did as a kid, but it feels rewarding to munch on something sweet. These are the candies that I would enjoy receiving on Halloween."
    }
    
    
    

}
