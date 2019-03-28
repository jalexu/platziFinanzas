//
//  OnBoardingConteinerViewController.swift
//  PlatziFinanzas
//
//  Created by Jaime Uribe on 3/27/19.
//  Copyright © 2019 Jaime Uribe. All rights reserved.
//

import UIKit

class OnBoardingConteinerViewController: UIViewController {
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //permite conectar
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "openOnBording",
            let destination = segue.destination as? OnBoardingViewController else {
                return
        }
        
        destination.pageControl = pageControl
    }
 

}
