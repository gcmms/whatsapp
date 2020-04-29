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
        tableView.dataSource = self
        tableView.delegate = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return conversas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ConversaTableViewCell.cellId, for: indexPath) as! ConversaTableViewCell
        let conversaAtual = conversas[indexPath.row]
        cell.lbNomeContato.text = conversaAtual.destinatario.nome
        cell.lbMensagem.text = conversaAtual.mensagens.last?.textoMensagem
        cell.hora = conversaAtual.mensagens.last!.horaEnviado
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 87
       }

}
