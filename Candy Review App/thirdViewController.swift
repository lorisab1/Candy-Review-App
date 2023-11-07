//
//  thirdViewController.swift
//  Candy Review App
//
//  Created by Lorisa Bulosan on 10/31/23.
//

import UIKit

class thirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {    
    
    @IBOutlet weak var tableView: UITableView!
    
    var gummiesCandyArray = ["Black Forest Gummy Bears", "Haribo Fizzy Cola", "Haribo Goldbears", "Welch's Fruit Snacks"]
    
    var gummiesRatingsArray = ["⭐️⭐️⭐️⭐️⭐️","⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gummiesCandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = gummiesCandyArray[indexPath.row]
        cell.detailTextLabel?.text = gummiesRatingsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    var categoryTwoImagesData = [String]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryTwoImagesData = dict!.object(forKey: "CategoryTwoImages") as! [String]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let s1 = segue.destination as! thirdDetailViewController
        let imageIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = categoryTwoImagesData[imageIndex!]
    }
   

}
