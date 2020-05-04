//
//  utilidadesGerais.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 03/05/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation
import UIKit

class UtilidadesGerais {
    
    static func configImageView(imageView: UIImageView, strImage: String){
        let img = UIImage(named: strImage)
        imageView.image = img
        imageView.layer.cornerRadius = (50 / 2)
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 0.1
        imageView.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
    }
    
}
