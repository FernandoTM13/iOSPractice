//
//  ExampleContact.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 24/10/21.
//

import SwiftUI

struct ExampleContact: View {
    
    var programmer: contactData
    
    var body: some View {
        
        
        HStack{
            programmer.avatar.resizable().scaledToFit().frame(width: 55, height: 55)

            VStack{
                Text(programmer.name)
                    .fontWeight(.medium)
                Text(programmer.language)
            }
        }
    }
}

struct ExampleContact_Previews: PreviewProvider {
    static var previews: some View {
        ExampleContact(programmer: contactData(id: 1 ,name: "Fernando Villegas", age: 4, language: "Swift, Python", avatar: Image("CircularP")))
    }
}
