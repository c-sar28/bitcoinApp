//
//  ViewController.swift
//  Clase 4 - BitcoinApp
//
//  Created by César Elías Segura on 21/4/18.
//  Copyright © 2018 César Elías Segura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Componentes de interfaz
    @IBOutlet weak var lblEquivalencia: UILabel!
    @IBOutlet weak var txtfDisponible: UITextField!
    //Constantes
    let intBitcoinEquivalencia = 10
    //Variables
    var intDisponible : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func txtDisponible(_ sender: UITextField) {
        if !(sender.text?.isEmpty)!{
            intDisponible = Int(sender.text!)!
            lblEquivalencia.text = String(compra(dinero:intDisponible))
            }
        }
    
    @IBAction func btnComprar(_ sender: UIButton) {
        print("Comprando ...")
    }
    
    //Utilerias
    func compra (dinero:Int) -> Int {
        var cantidadBitcoins : Int = 0
        if dinero >= intBitcoinEquivalencia{
            cantidadBitcoins =  dinero / intBitcoinEquivalencia
            //if dinero % intBitcoinEquivalencia > 0{
            //    cambio(dinero : dinero)
            //}
            }
        return cantidadBitcoins
        }
    
    func cambio (dinero:Int) -> Int{
        return dinero % intBitcoinEquivalencia
        }
    
}//Fin de clase

