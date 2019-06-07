//
//  DetailView.swift
//  Xcode11
//
//  Created by Lailan Rogerio Rodrigues Matos on 07/06/19.
//  Copyright © 2019 Lailan Rogerio Rodrigues Matos. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    let dadosUsuario:Usuario
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Image("lailan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .navigationBarTitle(Text("Dados Usuário"), displayMode: .inline)
                .cornerRadius(zoomed ? 75 : 0)
                .frame(width: 150, height: 150, alignment: .top)
                .tapAction {
                    withAnimation { self.zoomed.toggle() }
                }
            Text(dadosUsuario.nome).fontWeight(.bold)
        }
        
    }
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
             DetailView(dadosUsuario: usuariosFicticios[0])
        }
       
    }
}
#endif
