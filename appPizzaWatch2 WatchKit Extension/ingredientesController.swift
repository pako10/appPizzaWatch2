//
//  ingredientesController.swift
//  appPizzaWatch2
//
//  Created by Francisco Humberto Andrade Gonzalez on 29/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesController: WKInterfaceController {
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var numIng : Int = 0
    
    var conPepperoni : Bool = false
    var conJamon : Bool = false
    var conPavo : Bool = false
    var conSalchicha : Bool = false
    var conAnchoas : Bool = false
    var conAceitunas : Bool = false
    var conCebolla : Bool = false
    var conPimiento : Bool = false
    var conPina : Bool = false
    var conChampinones : Bool = false

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Datos
        
        // Configure interface objects here.
        
        tamano = c.tamanoMiPizza
        masa = c.masaMiPizza
        queso = c.quesoMiPizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func ingredientesElegidos() -> String {
        var misIngredientes : String = ""
        if conPepperoni {
            misIngredientes += "Pepperoni\n"
        }
        if conJamon {
            misIngredientes += "Jamón\n"
        }
        if conPavo {
            misIngredientes += "Pavo\n"
        }
        if conSalchicha {
            misIngredientes += "Salchicha\n"
        }
        if conAnchoas {
            misIngredientes += "Anchoas\n"
        }
        if conAceitunas {
            misIngredientes += "Aceitunas\n"
        }
        if conCebolla {
            misIngredientes += "Cebolla\n"
        }
        if conPimiento {
            misIngredientes += "Pimiento;\n"
        }
        if conPina{
            misIngredientes += "Piña\n"
        }
        if conChampinones {
            misIngredientes += "Champiñones\n"
        }
        return misIngredientes
    }

    @IBAction func orden() {
        let valorContexto=Datos(tp : tamano, mp:masa, qp:queso, num:numIng, ing:ingredientesElegidos())
        pushControllerWithName("IdentificadorValor4", context: valorContexto)
    }

}
