//
//  TransactionsViewController.swift
//  PlatziFinanzas
//
//  Created by Jaime Uribe on 3/27/19.
//  Copyright © 2019 Jaime Uribe. All rights reserved.
//

import UIKit

class TransactionsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate(set) lazy var emptyStateView: UIView = {
        guard let view = Bundle.main.loadNibNamed("EmptyState", owner: nil, options: [:])?.first as? UIView else {
            return UIView()
        }
        
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //de la celda que se cortó y pegó en el transactionsCell
        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
        // se implementan el delegate y Datasource
        tableView.dataSource = self
        tableView.delegate = self
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

// para implemtar  un delegate -> se ejecutan acciones y retorna un evento
//para implemtar  un dataSource -> codigo a ejecutar
//se crea una extensión de la clase donde se van a utilizar

extension TransactionsViewController: UITableViewDelegate{
    
}


extension TransactionsViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        tableView.backgroundView = count == 0 ? emptyStateView : nil
        //quitar las lineas de las celdas
        tableView.separatorStyle = count == 0 ? .none : .singleLine
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // deque se coge una celda y se reutiliza
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) //indexPath filas y secciones
    }
    
    
}
