//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Jessica E Brisson on 2017-03-14.
//  Copyright © 2017 Jessica E Brisson. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)

        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }
    
}
