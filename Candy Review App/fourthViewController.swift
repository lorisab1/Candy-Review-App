//
//  fourthViewController.swift
//  Candy Review App
//
//  Created by Lorisa Bulosan on 10/31/23.
//

import UIKit

class fourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var sourCandyArray = ["Sour Patch Kids", "Sour Punch Bites", "Sour Skittles ", "Sweet Tarts Mini Chewy"]
    
    var sourRatingsArray = ["⭐️⭐️⭐️⭐️⭐️","⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourCandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = sourCandyArray[indexPath.row]
        cell.detailTextLabel?.text = sourRatingsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        
    }
    


}
