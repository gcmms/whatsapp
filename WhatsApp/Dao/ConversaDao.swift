//
//  ConversaDao.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 28/04/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class ConversaDao {
        
    static func retornaTodasAsConversas() -> [Conversa] {
        var conversas = [Conversa]()
        
        let rootContato = Contato(nome: "Gabriel Sanzone", imagemPerfil: nil, descricao: "", numero: 5513999999991)
        
        let joao = Contato(nome: "João da Silva", imagemPerfil: nil, descricao: "", numero: 5513999999992)
        let joaoMensagem = Mensagem(remetente: joao, horaEnviado: Date(), horaRecebido: nil, horaVisualizado: nil, textoMensagem: "Olá Gabriel bem ?")
        let gabrielMensagem = Mensagem(remetente: rootContato, horaEnviado: Date(), horaRecebido: nil, horaVisualizado: nil, textoMensagem: "Olá Gabriel bem ?")
        let joaoConversa = Conversa(destinatario: joao, mensagens: [joaoMensagem, gabrielMensagem])
        
        conversas.append(joaoConversa)
        return conversas
    }
    
}
