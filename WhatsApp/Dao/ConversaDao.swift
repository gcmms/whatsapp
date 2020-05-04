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
        let rootContato = ContatoDao.retornaMeuContato()
        
        guard let marcela = ContatoDao.retornaContatoWhere(numero: "5513999999991") else {return conversas}
        let marcelaMensagem = Mensagem(remetente: marcela, horaEnviado: Date(), horaRecebido: nil, horaVisualizado: nil, textoMensagem: "teste é legal porque podemos ver como se comporta em varias condições")
        let marcelaConversa = Conversa(destinatario: marcela, mensagens: [marcelaMensagem])
        
        conversas.append(marcelaConversa)
        
        
        guard let joao = ContatoDao.retornaContatoWhere(numero: "5513999999992") else {return conversas}
        let joaoMensagem = Mensagem(remetente: joao, horaEnviado: Date(), horaRecebido: nil, horaVisualizado: nil, textoMensagem: "Olá Gabriel bem ?")
        let gabrielMensagem = Mensagem(remetente: rootContato, horaEnviado: Date(), horaRecebido: nil, horaVisualizado: nil, textoMensagem: "Sim sim e você?")
        let joaoConversa = Conversa(destinatario: joao, mensagens: [joaoMensagem, gabrielMensagem])
        
        conversas.append(joaoConversa)
        
        guard let alice = ContatoDao.retornaContatoWhere(numero: "5513999999993") else {return conversas}
        let aliceMensagem = Mensagem(remetente: alice, horaEnviado: Date(), horaRecebido: nil, horaVisualizado: nil, textoMensagem: "Meu iphone parou de funcionar")
        let aliceConversa = Conversa(destinatario: alice, mensagens: [aliceMensagem])
        
        conversas.append(aliceConversa)
         
        return conversas
    }
    
}
