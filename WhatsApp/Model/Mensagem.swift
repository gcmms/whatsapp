//
//  Mensagem.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 28/04/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

struct Mensagem {
    let remetente: Contato
    let horaEnviado: Date
    let horaRecebido: Date?
    let horaVisualizado: Date?
    let textoMensagem: String
}
