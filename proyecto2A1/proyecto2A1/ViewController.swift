//
//  ViewController.swift
//  proyecto2A1
//
//  Created by Laboratorio UNAM-Apple 04 on 12/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [datos] ()

    @IBOutlet weak var user: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func Ingresar(_ sender: UIButton) {

        for i in 0...data.count - 1 {
        
            if data[i].nombre == user.text {
                
                if data[i].pw == password.text {
                    
                   print (" ")
                   
                    
                }
                  
                else {
                    print ("contraseña incorrecta")
                }
                
            } else {
                print ("nombre incorrecto")
            }
        
        }
     
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(datos(nombre: "Ale", pw: "gordito"))
        
        
//        var nom = user.text
//        var pw = password.text
      
    }

   
}
   



