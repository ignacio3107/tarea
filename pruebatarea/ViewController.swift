//
//  ViewController.swift
//  pruebatarea
//
//  Created by Ignacio Hdz on 06/03/16.
//  Copyright © 2016 Ignacio Hdz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* NOTA IMPORTANTE: 
        El còdigo lo tuve que poner dentro de una aplicacion distinta a la de un playground ya que
        con el playground no se habilitaban las opciones para hacer push y commit y poderlo subir al repositorio de GitHub
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*: miniReto condicionar numeros del 1 al 100
        
        2.Si el numero es divisible entre 5 imprime el numero + "#Bingo!!"
        3.Si el numero es par, el numero + la palabra "Par"
        4.Si el numero es impar, el numero + la palabra "Impar"
        1.Si el numero se encuentra en el rango de 30-40, numero + las palabras "Viva Swift!"
        */
        
        
        let numero = 1...100
        var palabra : String = ""
        let divisor : Int = 5
        let par : Int = 2
        let mod : Int = 0
        var num : String = ""
        
        for it in numero{
            //Inician condiciones de numeros...
            if it > 29 && it < 41 {
                palabra = "Viva Swift!!!"
            }else if it % divisor == mod {
                palabra = "Bingo!!!"
            }else if it % par == mod {
                palabra = "Par!!!"
            }else {
                palabra = "Impar!!!"
            }
            /* Condicion que imprime los numeros de un digito con un 0 para una vista uniforme
            y asì practicar la impresion con concatenacion de variables e interpolaciòn */
            if it > 0 && it < 10 {
                num = "0" + String(it)
                print("# " + num + " \t" + palabra)
            }else {
                print("# \(it) \t" + palabra)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

