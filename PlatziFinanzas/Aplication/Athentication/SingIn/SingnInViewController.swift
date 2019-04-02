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
        guard let email = emailTextField.text else{
            return
        }
        //Expresion regular para validar email
        let range = NSRange(location: 0, length: email.count)
        let regex = try? NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}", options: [])
        let validation = regex?.firstMatch(in: email, options: [], range: range)
        
        if validation == nil{
            return
        }
        
        
        
        guard let password = passwordTextField.text else{
            return
        }
        
        let rangePassword = NSRange(location: 0, length: password.count)
        let regexPassword = try? NSRegularExpression(pattern: "^(?=.[A-Z].[A-Z])(?=.[!@#$&])(?=.[0-9].[0-9])(?=.[a-z].[a-z].[a-z]).{8}$", options: [])
        let validationPassword = regexPassword?.firstMatch(in: password, options: [], range: rangePassword)
        
        if validationPassword == nil{
            return
        }
        
        print(email, password)
        
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
