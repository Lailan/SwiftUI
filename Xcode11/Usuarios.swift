//
//  Usuarios.swift
//  Xcode11
//
//  Created by Lailan Rogerio Rodrigues Matos on 07/06/19.
//  Copyright © 2019 Lailan Rogerio Rodrigues Matos. All rights reserved.
//

import SwiftUI

struct Usuario : Identifiable {
    var id = UUID()
    var nome:String
    var profissao:String
    
}

#if DEBUG
let usuariosFicticios = [
    Usuario(nome: "Lailan Matos", profissao: "Desenvolvedor iOS"),
    Usuario(nome: "Marco Túlio", profissao: "Desenvolvedor iOS"),
    Usuario(nome: "João Paulo", profissao: "Desenvolvedor Android"),
    Usuario(nome: "Giovanni", profissao: "Leader Team"),
    Usuario(nome: "Caio", profissao: "Desenvolvedor BackEnd"),
    Usuario(nome: "Diego", profissao: "Design"),
]
#endif
