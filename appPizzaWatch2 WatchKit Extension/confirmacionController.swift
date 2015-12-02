//
//  confirmacionController.swift
//  appPizzaWatch2
//
//  Created by Francisco Humberto Andrade Gonzalez on 29/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class confirmacionController: WKInterfaceController {

    @IBOutlet var confirmar: WKInterfaceButton!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Datos
        
        
            tamano.setText(c.tamanoMiPizza)
            tamano.setHidden(false)
            masa.setText(c.masaMiPizza)
            masa.setHidden(false)
            queso.setText(c.quesoMiPizza)
            queso.setHidden(false)
            ingredientes.setText("Ingredientes:\n\(c.ingredientesMiPizza)")
            ingredientes.setHidden(false)
            confirmar.setHidden(false)
        

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
