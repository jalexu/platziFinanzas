//
//  SingnInViewController.swift
//  PlatziFinanzas
//
//  Created by Jaime Uribe on 4/1/19.
//  Copyright © 2019 Jaime Uribe. All rights reserved.
//

import UIKit

class SingnInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singIn(_ sender: Any) {
        
        //garantizar que email si conntenga información, si exite continua si no retorno
        guard let email = emailTextField.text, validate(text: email, regex: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}") else {
            return
        }
        
        guard let password = passwordTextField.text, validate(text: password, regex: "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#$^+=!*()@%&]).{8,}$") else {
            return
        }
        
    }
    
    
    
    //validar si la expresion de correo y contraseña son validas se pueden declarar metodos privados
    private func validate(text: String, regex: String) -> Bool {
        let range = NSRange(location: 0, length: text.count)
        let regex = try? NSRegularExpression(pattern: regex)
        return regex?.firstMatch(in: text, options: [], range: range) != nil
        
    }
}
