//
//  ContatosTableViewController.swift
//  WhatsApp
//
//  Created by Gabriel Sanzone on 03/05/20.
//  Copyright © 2020 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class ContatosTableViewController: UITableViewController {
    
    let listaContatos = ContatoDao.retornaListaContato()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaContatos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContatosTableViewCell.cellID , for: indexPath) as! ContatosTableViewCell
        let contato = listaContatos[indexPath.row]
        cell.lbNome.text = contato.nome
        cell.lbDescricao.text = contato.descricao
        UtilidadesGerais.configImageView(imageView: cell.imgPerfil, strImage: "semavatar")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
