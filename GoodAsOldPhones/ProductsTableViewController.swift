//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Jessica E Brisson on 2017-03-14.
//  Copyright © 2017 Jessica E Brisson. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames{
            return pNames.count
        }
        return 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let productName = productNames?[indexPath.row]
        if let pName = productName{
            cell.textLabel?.text = pName
        }
        cell.imageView?.image = #imageLiteral(resourceName: "image-cell2")
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct"{
            let productVC = segue.destination as? ProductViewController
            productVC?.productName = "Really old phone"
        }
    }
}
