//
//  CityCodeSubcategoriesViewController.swift
//  OurDallas
//
//  Created by Rafe Forward on 11/26/23.
//

import UIKit

class CityCodeSubcategoriesViewController:  UITableViewController {

    var subcategories: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let customColor = UIColor(red: 240/255, green: 236/255, blue: 220/255, alpha: 1.0)
        self.view.backgroundColor = customColor
    }

    // MARK: - Table view data source


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subcategories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = subcategories[indexPath.row]
        let customColor = UIColor(red: 240/255, green: 236/255, blue: 220/255, alpha: 1.0)
        cell.backgroundColor = customColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedSubcategory = subcategories[indexPath.row]

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let destinationVC = storyboard.instantiateViewController(withIdentifier: "RequestDetailViewController") as? RequestDetailViewController {
            destinationVC.subcategory = selectedSubcategory
            self.present(destinationVC, animated: true, completion: nil)
        }
    }

}
