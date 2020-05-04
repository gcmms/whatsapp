//
//  ContatosTableViewCell.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 03/05/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class ContatosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgPerfil: UIImageView!
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbDescricao: UILabel!
    static public let cellID = "contatoCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
