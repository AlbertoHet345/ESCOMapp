//
//  Mensajes.swift
//  ESCOMapp
//
//  Created by Alberto Garcia on 10/12/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import Foundation
import UIKit

class Mensajes: UIViewController {
    var mensaje: String = ""
    
    func desplegarMensaje(mensaje: String) {
        let alerta = UIAlertController(title: "Alert", message: mensaje, preferredStyle: UIAlertControllerStyle.alert)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        
        alerta.addAction(ok)
        
        self.present(alerta, animated: true, completion: nil)
    }
}
