//
//  FirstViewController.swift
//  TabBarControllerDelegate
//
//  Created by Mark Meretzky on 2/19/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class FirstViewController: UIViewController {
    var i: Int?;   //for passing information from one view controller to another

    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        i = 12345;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender);
        print("preparing to segue from \(type(of: segue.source)) to \(type(of: segue.destination))");
    }

}
