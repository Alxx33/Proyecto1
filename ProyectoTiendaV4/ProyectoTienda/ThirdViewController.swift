//
//  ThirdViewController.swift
//  ProyectoTienda
//
//  Created by Macbook on 02/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tablaCompra: UITableView!
    @IBOutlet weak var aviso: UILabel!
    
    
    var precioTotal: Double = 0
    var carrito2 = [Productos]()
    var limpiar : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aviso.text = " "
        for i in carrito2{
           precioTotal = (Double(i.cantidad ) * i.presio) + precioTotal
        }
        total.text = "Total a pagar: \(precioTotal)"
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carrito2.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        cell.textLabel?.text = "\(carrito2[indexPath.row].nombre) - $\(carrito2[indexPath.row].presio) x \(carrito2[indexPath.row].cantidad)"
        cell.imageView?.image = UIImage(named: carrito2[indexPath.row].imagen)
        return cell
    }
    
    @IBAction func comprar(_ sender: UIButton) {
        aviso.text = "Gracias por su compra"
        carrito2.removeAll()
        
        tablaCompra.reloadData()
        total.text = "Total a pagar: 0 "
        limpiar = true
    }
    
    

}
