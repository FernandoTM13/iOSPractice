//
//  ListView.swift
//  MyFirstApp
//  Created by Fernando Miguel Villegas Pancca on 12/10/21.

import SwiftUI

let ProgrammerList = [(ProgrammerStruct(id: 1, name: "Fernando Villegas", languages: "Swift, Python", avatar: Image("CircularP"), favorite: true)), (ProgrammerStruct(id: 2, name: "Paolo Guerrero", languages: "Go, Python", avatar: Image("CircularP"), favorite: false)), (ProgrammerStruct(id: 3, name: "Cristiano Ronaldo", languages: "Kotlin, C++", avatar: Image("CircularP"), favorite: true)), (ProgrammerStruct(id: 4, name: "Angel Di Maria", languages: "Java, Ruby", avatar: Image("CircularP"), favorite: false))]


struct ListView: View {
    
    @State private var showFavorite = false
    
    private var filteredProgrammer: [ProgrammerStruct]{
        return ProgrammerList.filter{ index in
            return !showFavorite || index.favorite
        }
    }
    
    
    var body: some View {

            
            NavigationView{
                VStack {
                    Toggle(isOn: $showFavorite) {
                        Text("Mostrar favoritos")
                    }.padding()
                    
                    List(filteredProgrammer, id: \.id){
                        
                        index in
                        NavigationLink(destination: ListViewDetails(ProgrammerDetails: index)){
                        
                                RowView(programmer: index)
                        }
                        
                    }
                }.navigationTitle("Contactos")
                
            }
           
        
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
