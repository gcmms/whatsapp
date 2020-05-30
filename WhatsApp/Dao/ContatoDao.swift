//
//  ContatoDao.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 02/05/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class ContatoDao {
    
    static private func geraJson()->[[String: String]]{
        //TODO: Remover qnd o json for gerado pelo bd
        var contato1 = [String: String]()
        contato1["nome"] = "Meu Amor"
        contato1["profile_img"] = ""
        contato1["descricao"] = "Ame o opressor como ama o oprimido"
        contato1["numero"] = "5513999999991"
        
        var contato2 = [String: String]()
        contato2["nome"] = "João da Silva"
        contato2["profile_img"] = ""
        contato2["descricao"] = "Pensando na Vida.."
        contato2["numero"] = "5513999999992"
        
        var contato3 = [String: String]()
        contato3["nome"] = "Lucas da Silva"
        contato3["profile_img"] = ""
        contato3["descricao"] = "A vida é a vida, se não tem vida então não é a vida"
        contato3["numero"] = "5513999999993"
        
        return [contato1, contato2, contato3]
    }
    
    static func retornaListaContato()-> [Contato] {
        let contatos = ContatoDao.geraJson()
        var listContatos = [Contato]()
        for contato in contatos {
            guard let nome = contato["nome"] else {print("nome não encontrado"); continue}
            guard let img = contato["profile_img"] else {print("img não encontrado"); continue}
            guard let descricao = contato["descricao"] else {print("descricao não encontrado"); continue}
            guard let numero = contato["numero"]  else {print("numero não encontrado"); continue}
            guard let numeroInt = Int(numero) else {print("numero não encontrado"); continue}
            listContatos.append(Contato(nome: nome, imagemPerfil: img, descricao: descricao, numero: numeroInt))
        }
        return listContatos
    }
    
    static func retornaContatoWhere(numero: String)->Contato? {
        let contatos = ContatoDao.geraJson()
        for contato in contatos {
            if contato["numero"] == numero{
                guard let nome = contato["nome"] else {print("nome não encontrado"); continue}
                guard let img = contato["profile_img"] else {print("img não encontrado"); continue}
                guard let descricao = contato["descricao"] else {print("descricao não encontrado"); continue}
                guard let numero = contato["numero"]  else {print("numero não encontrado"); continue}
                guard let numeroInt = Int(numero) else {print("numero não encontrado"); continue}
                return Contato(nome: nome, imagemPerfil: img, descricao: descricao, numero: numeroInt)
            }
        }
        return nil
    }
    
    static func retornaMeuContato()->Contato {
        return Contato(nome: "Gabriel Sanzone", imagemPerfil: nil, descricao: "", numero: 5513999999991)
    }
    
}
