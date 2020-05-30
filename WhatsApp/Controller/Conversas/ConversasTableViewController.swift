//
//  ConversasTableViewController.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 28/04/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class ConversasTableViewController: UITableViewController {

    var conversas = ConversaDao.retornaTodasAsConversas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .never
        
        let search = UISearchController(searchResultsController: nil)
        //search.searchResultsUpdater = self
        self.navigationItem.searchController = search
        
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ConversaTableViewCell.cellId, for: indexPath) as! ConversaTableViewCell
        let conversaAtual = conversas[indexPath.row]
        cell.lbNomeContato.text = conversaAtual.destinatario.nome
        cell.lbMensagem.text = conversaAtual.mensagens.last?.textoMensagem
        cell.hora = conversaAtual.mensagens.last!.horaEnviado
        guard let perfil = conversaAtual.destinatario.imagemPerfil, !perfil.isEmpty else {
            UtilidadesGerais.configImageView(imageView: cell.imgContato, strImage: "semavatar")
            return cell
        }
        UtilidadesGerais.configImageView(imageView: cell.imgContato, strImage: perfil)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 60
       }

}
