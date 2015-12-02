//
//  sizeController.swift
//  appPizzaWatch2
//
//  Created by Francisco Humberto Andrade Gonzalez on 29/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class sizeController: WKInterfaceController {
    var tamanoPizza: String = "Chica"

    @IBOutlet var tamano: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevoTamano(value: Float) {
        if (value == 1) {
            tamanoPizza = "Chica"
        } else if (value == 2) {
            tamanoPizza = "Mediana"
        }
        else {
            tamanoPizza = "Grande"
        }
        tamano.setText(tamanoPizza)
    }
    @IBAction func registrarTamano() {
        let valorContexto=Datos(tp : tamanoPizza, mp:"", qp:"", num:0, ing:"")
        pushControllerWithName("IdentificadorValor", context: valorContexto)
    }
    
}
