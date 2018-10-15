//
//  SecondViewController.swift
//  proyecto2A1
//
//  Created by Laboratorio UNAM-Apple 04 on 12/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var lista : [String] = []
   
    
    @IBOutlet weak var us: UITextField!
    var dataFromFirstView : Int = 0
    
    
    
    

    @IBAction func registrar(_ sender: UIButton) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lista.append(us.text!)

        print (lista)
    }

}
