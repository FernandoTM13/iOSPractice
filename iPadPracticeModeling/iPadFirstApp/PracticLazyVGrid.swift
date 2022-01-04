//
//  PracticLazyVGrid.swift
//  iPadFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 1/12/21.
//

import SwiftUI

let CinderellaArray: [Cinderella] = [(Cinderella(code: 1, name: "Fer", pictureA: Image("jungleb"))), (Cinderella(code: 2, name: "Gus", pictureA: Image("jungleb"))), (Cinderella(code: 3, name: "Jhe", pictureA: Image("jungleb"))), (Cinderella(code: 4, name: "Lui", pictureA: Image("jungleb"))), (Cinderella(code: 5, name: "Xio", pictureA: Image("jungleb"))), (Cinderella(code: 6, name: "Gia", pictureA: Image("jungleb"))), (Cinderella(code: 7, name: "Ale", pictureA: Image("jungleb"))), (Cinderella(code: 8, name: "Per", pictureA: Image("jungleb"))), (Cinderella(code: 9, name: "Min", pictureA: Image("jungleb"))), (Cinderella(code: 7, name: "Ale", pictureA: Image("jungleb"))), (Cinderella(code: 8, name: "Per", pictureA: Image("jungleb"))), (Cinderella(code: 9, name: "Min", pictureA: Image("jungleb")))]


struct PracticLazyVGrid: View {
    
    @State var nameN: String = "    Fernando Villegas"
    @State var apellidoN: String = "    Pancca Miguel"
    @State var emailN: String = "    fernando.villegas1@unmsm.edu.pe"
    
    let columnG: [GridItem] = [GridItem(.flexible(), spacing: nil, alignment: nil), GridItem(.flexible(), spacing: nil, alignment: nil), GridItem(.flexible(), spacing: nil, alignment: nil)]
    
    
    var body: some View {
        
        
        VStack {
            ZStack{
                    RoundedRectangle(cornerRadius: 40).fill(Color.white).frame(width: 650, height: 400).shadow(color: .black.opacity(0.2), radius: 10)
                
                    HStack{
                        Image("CircularP").resizable().scaledToFit().frame(width: 250, height: 250)
                        VStack{
                            Text("Nombres").font(.custom("Helvetica Neue", size: 25)).fontWeight(.semibold).offset(x: -83)
                            
                            TextField("Nombre", text: $nameN ).frame(width: 300, height: 45).background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.leading, 45)
                            
                            Text("Apellidos").font(.custom("Helvetica Neue", size: 25)).fontWeight(.semibold).offset(x: -83).padding(.top, 15)
                            
                            TextField("Nombre", text: $apellidoN ).frame(width: 300, height: 45).background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.leading, 45)
                            
                            Text("Correo").font(.custom("Helvetica Neue", size: 25)).fontWeight(.semibold).offset(x: -83).padding(.top, 15)
                            
                            TextField("Nombre", text: $emailN ).keyboardType(.emailAddress).frame(width: 300, height: 45).background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.leading, 45)
                        }}}.padding(.top, 100)
            ScrollView{
                LazyVGrid(columns: columnG){
                        
                    ForEach(CinderellaArray.indices) {
                        index in
                        ArticleModel(dataC: CinderellaArray[index])
                    }
                }.padding()

            }
        }

        
    }
}

struct PracticLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        PracticLazyVGrid()
    }
}
