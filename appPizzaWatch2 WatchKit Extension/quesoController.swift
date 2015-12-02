//
//  quesoController.swift
//  appPizzaWatch2
//
//  Created by Francisco Humberto Andrade Gonzalez on 29/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class quesoController: WKInterfaceController {
    var tamano : String = ""
    var masa : String = ""
    var quesoPizza: String = "Sin queso"

    @IBOutlet var queso: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let c = context as! Datos
        
        tamano = c.tamanoMiPizza
        masa = c.masaMiPizza

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
  
    @IBAction func nuevoQueso(value: Float) {
        if (value == 1) {
            quesoPizza = "Mozzarela"
        } else if (value == 2) {
            quesoPizza = "Cheddar"
        } else if (value == 3) {
            quesoPizza = "Parmesano"
        } else {
            quesoPizza = "Sin queso"
        }
        queso.setText(quesoPizza)
    }
    
    @IBAction func nextQueso() {
        let valorContexto=Datos(tp : tamano, mp:masa, qp:quesoPizza, num:0, ing:"")
        pushControllerWithName("IdentificadorValor3", context: valorContexto)
    }

}
