//
//  ListViewDetails.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 12/10/21.
//

import SwiftUI

struct ListViewDetails: View {
    
    var ProgrammerDetails: ProgrammerStruct
    
    var body: some View {

        VStack {
            ProgrammerDetails.avatar.resizable().scaledToFit().frame(width: 250, height: 250).shadow(color: Color.black, radius: 3)
            
            Text(ProgrammerDetails.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(ProgrammerDetails.languages)
                .font(.title3)
                .fontWeight(.regular)
            
        }
        
    }
}

struct ListViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        ListViewDetails(ProgrammerDetails: ProgrammerStruct(id: 1, name: "Fernando Villegas", languages: "Swift, Python", avatar: Image("CircularP"), favorite: true))
    }
}
