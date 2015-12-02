//
//  Datos.swift
//  appPizzaWatch2
//
//  Created by Francisco Humberto Andrade Gonzalez on 29/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import WatchKit

class Datos: NSObject {
    var tamanoMiPizza : String = ""
    var masaMiPizza : String = ""
    var quesoMiPizza : String = ""
    var numIngredientesMiPizza : Int = 0
    var ingredientesMiPizza : String = ""
    
    init(tp:String, mp:String, qp:String, num:Int, ing:String){
        tamanoMiPizza = tp
        masaMiPizza = mp
        quesoMiPizza = qp
        numIngredientesMiPizza = num
        ingredientesMiPizza = ing
    }


}
