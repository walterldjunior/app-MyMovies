//
//  Filme.swift
//  app-MyMovies
//
//  Created by Walter Junior on 10/01/2018.
//  Copyright © 2018 Walter Junior. All rights reserved.
//

import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String) {
        self.titulo = titulo
        self.descricao = descricao
    }
}
