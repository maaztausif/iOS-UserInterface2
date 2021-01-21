//
//  TabBarViewController.swift
//  UserInterface2
//
//  Created by Maaz Bin Tausif on 20/01/2021.
//  Copyright © 2021 maaz bin tausif. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        layer.cornerRadius = 30
//        layer.masksToBounds = true
//        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        // Do any additional setup after loading the view.
        tabBar()
    }
    
    func tabBar(){
        tabBar.layer.cornerRadius = 15
        tabBar.layer.masksToBounds = true
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
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
