//
//  ConversasTableViewCell.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 28/04/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class ConversaTableViewCell: UITableViewCell {
    static let cellId = "conversaCell"
    @IBOutlet weak var imgContato: UIImageView!
    @IBOutlet weak var lbNomeContato: UILabel!
    @IBOutlet weak var lbMensagem: UILabel!
    @IBOutlet weak var lbHora: UILabel!
    
    var hora = Date() {
        didSet {
            let value = formartDate(format: "hh:mm", value: hora)
            lbHora.text = value
        }
    }
    
    private func formartDate(format: String, value: Date) ->String {
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = format //"yyyy-MM-dd hh:mm:ss"
        return dataFormatter.string(from: value)
    }
}
