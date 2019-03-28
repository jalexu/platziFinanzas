//
//  TabBarViewController.swift
//  PlatziFinanzas
//
//  Created by Jaime Uribe on 3/27/19.
//  Copyright © 2019 Jaime Uribe. All rights reserved.
//

import UIKit
import PlatziFinanzasCore

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        custonButtom()
    }
    
    func custonButtom() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        
        var menuButtonFrame = menuButton.frame
        
        menuButtonFrame.origin.y = tabBar.frame.origin.y + 5
        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.setImage(UIImage(named: "PlusBotton"), for: .normal)
        
        menuButton.backgroundColor = UIColor(named: "GreenColor")
        menuButton.layer.cornerRadius = 8
        view.addSubview(menuButton)
        
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
        
        
    }
    
    @objc private func menuButtonAction(sender: UIButton){
        selectedIndex = 2
    }

}
