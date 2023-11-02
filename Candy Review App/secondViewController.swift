//
//  secondViewController.swift
//  Candy Review App
//
//  Created by Lorisa Bulosan on 10/31/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var chocolateCandyArray = ["Reese's Cups", "Twix", "M&Ms", "Kit Kat"]
    
    var chocolateRatingsArray = ["⭐️⭐️⭐️⭐️⭐️","⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolateCandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = chocolateCandyArray[indexPath.row]
        cell.detailTextLabel?.text = chocolateRatingsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    var categoryOneImagesData = [String]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryOneImagesData = dict!.object(forKey: "CategoryOneImages") as! [String]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let s1 = segue.destination as! secondDetailViewController
        let imageIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = categoryOneImagesData[imageIndex!]
    }
    

}
