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
    
    var product: Product?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let p = product{
            productNameLabel.text = p.name
            if let i = p.productImage{
                productImageView.image = UIImage(named: i)
            }
        }
        
        //productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3") //or could write -> UIImage(named: "phone-fullscreen3")
        
    }
    

    @IBAction func addToCartPressed(_ sender: AnyObject) -> Void {
        print("Button Tapped")
    }
    


}
