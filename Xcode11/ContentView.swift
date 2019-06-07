//
//  ContentView.swift
//  Xcode11
//
//  Created by Lailan Rogerio Rodrigues Matos on 04/06/19.
//  Copyright © 2019 Lailan Rogerio Rodrigues Matos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var usuarios: [Usuario] = []
    
    var body: some View {
        NavigationView {
            List(usuarios) { usuario in
                CelulaUsuario(usuario: usuario)
            }.navigationBarTitle(Text("Usuários"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(usuarios: usuariosFicticios)
    }
}
#endif

struct CelulaUsuario : View {
    let usuario:Usuario
    
    var body: some View {
        return NavigationButton(destination: DetailView(dadosUsuario: usuario)) {
            Image("lailan").resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .stretch).frame(width: 50.0, height: 50.0).cornerRadius(5)
            VStack(alignment: .leading) {
                Text(usuario.nome)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    Text(usuario.profissao)
                        .color(.gray)
                        .multilineTextAlignment(.leading)
                }
            }
        }
    }
