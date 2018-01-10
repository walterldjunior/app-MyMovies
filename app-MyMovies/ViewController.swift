//
//  ViewController.swift
//  app-MyMovies
//
//  Created by Walter Junior on 09/01/2018.
//  Copyright © 2018 Walter Junior. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo:"007 - Spectre", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Deadpool", descricao: "descricao 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(titulo:"O Regresso", descricao: "descricao 5", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(titulo:"A Herdeira", descricao: "descricao 6", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Caçadores de emoção", descricao: "descricao 7", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Regresso do mal", descricao: "descricao 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Tarzan", descricao: "descricao 9", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Hardcore", descricao: "descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row]
        
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        //celula.textLabel?.text = filme.titulo
        //celula.imageView?.image = filme.imagem
        
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        
        return celula
    }
}

