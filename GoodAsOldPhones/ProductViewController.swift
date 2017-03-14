//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Jessica E Brisson on 2017-03-14.
//  Copyright © 2017 Jessica E Brisson. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    //outlets
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var productName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = productName
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3") //or could write -> UIImage(named: "phone-fullscreen3")
        
    }
    

    @IBAction func addToCartPressed(_ sender: AnyObject) -> Void {
        print("Button Tapped")
    }
    


}
