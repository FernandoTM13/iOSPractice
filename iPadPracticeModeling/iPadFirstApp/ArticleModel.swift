//
//  ArticleModel.swift
//  iPadFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 1/12/21.
//

import SwiftUI

struct ArticleModel: View {
    
    let dataC: Cinderella
        
    @State var nameN: String = "    Fernando Villegas"
    @State var apellidoN: String = "    Pancca Miguel"
    @State var emailN: String = "    fernando.villegas1@unmsm.edu.pe"
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
           
            VStack {
                Text("\(dataC.name), Mi gran experiencia en Paracas con mis hijos").font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                
                dataC.pictureA.resizable().frame(width: 188, height: 100).cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                })
            }
        }
        
    }
}

struct ArticleModel_Previews: PreviewProvider {
    static var previews: some View {
        ArticleModel(dataC: Cinderella(code: 1, name: "Fer", pictureA: Image("jungleb")))
    }
}
