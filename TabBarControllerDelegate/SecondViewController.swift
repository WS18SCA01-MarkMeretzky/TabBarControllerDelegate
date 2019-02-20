//
//  SecondViewController.swift
//  TabBarControllerDelegate
//
//  Created by Mark Meretzky on 2/19/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var i: Int?;   //for passing information from one view controller to another

    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Do any additional setup after loading the view, typically from a nib.
        // Print the information received from the FirstViewController.
        
        if i == nil {
            print("SecondViewController, i == nil");
        } else {
            print("SecondViewController, i == \(i!)");
        }
    }


}

