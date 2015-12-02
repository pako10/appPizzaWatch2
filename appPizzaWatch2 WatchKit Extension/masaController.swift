//
//  masaController.swift
//  appPizzaWatch2
//
//  Created by Francisco Humberto Andrade Gonzalez on 29/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class masaController: WKInterfaceController {
    var tamano : String = ""
    var masaPizza : String = "Delgada"

    @IBOutlet var masa: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Datos
        tamano = c.tamanoMiPizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevaMasa(value: Float) {
        if (value == 1) {
            masaPizza = "Delgada"
        }
        else if (value == 2) {
            masaPizza = "Crujiente"
        }
        else {
            masaPizza = "Gruesa"
        }
        masa.setText(masaPizza)
    }
    
    @IBAction func nextMasa() {
        let valorContexto=Datos(tp : tamano, mp:masaPizza, qp:"", num:0, ing:"")
        pushControllerWithName("IdentificadorValor2", context: valorContexto)
    }
}
