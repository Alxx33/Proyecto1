//
//  SecondViewController.swift
//  proyecto2A1
//
//  Created by Laboratorio UNAM-Apple 04 on 12/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    var lista : [String] = []
   
    @IBOutlet weak var user2: UITextField!
    var from = String()
    
    
    @IBAction func registro(_ sender: UIButton) {
         lista.append(user2.text!)
         print (lista)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
     // lista.append(user2.text!)
        
       
//        let data = user2.text
        
    }

}
