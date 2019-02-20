//
//  TabBarController.swift
//  TabBarControllerDelegate
//
//  Created by Mark Meretzky on 2/19/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad();

        // Do any additional setup after loading the view.
        delegate = self;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare");
    }
    
    // MARK: - UITabBarControllerDelegate
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("About to go from \(type(of: selectedViewController!)) to \(type(of: viewController)).");
        
        if let source: FirstViewController = selectedViewController as? FirstViewController,
            let destination: SecondViewController = viewController as? SecondViewController {
            destination.i = source.i;   //Transmit information from one view controller to another.
        }
        return true;
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
