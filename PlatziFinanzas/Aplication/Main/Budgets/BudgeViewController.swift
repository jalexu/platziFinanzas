//
//  budgeViewController.swift
//  PlatziFinanzas
//
//  Created by Jaime Uribe on 3/28/19.
//  Copyright © 2019 Jaime Uribe. All rights reserved.
//

import UIKit

class BudgeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var animationsButtons: [UIButton]!

    @IBOutlet weak var animationLayout: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func animateHeader(sender: UIButton){
        //mueve color boton
        animationLayout.constant = sender.frame.origin.x
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        }){ (completed) in
            
            self.animationsButtons.forEach{
                $0.setTitleColor( UIColor(named: "TextColor"), for: .normal)
                sender.setTitleColor(UIColor.white, for: .normal)
            }
            
        }
    }

}

extension BudgeViewController: UITableViewDelegate{
    
}


extension BudgeViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // deque se coge una celda y se reutiliza
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) //indexPath filas y secciones
}

}



