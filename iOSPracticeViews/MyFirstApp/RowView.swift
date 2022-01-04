//
//  RowView.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 12/10/21.
//

import SwiftUI

struct RowView: View {
    
    var programmer: ProgrammerStruct

    var body: some View {

        HStack{
            programmer.avatar.resizable().scaledToFit().clipShape(Circle()).frame(width: 55, height: 55).padding(2)
            
            VStack{
                Text(programmer.name)
                    .fontWeight(.semibold)
                Text(programmer.languages)
                
            }
            
            if programmer.favorite{
                Image("StarIcon").resizable().frame(width: 25, height: 25).offset(x: 35)
                
            }
          
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: ProgrammerStruct(id: 1, name: "Fernando Villegas", languages: "Swift, Python", avatar: Image("CircularP"), favorite: true))
    }
}
