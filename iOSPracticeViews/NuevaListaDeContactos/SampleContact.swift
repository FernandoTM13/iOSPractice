//
//  SampleContact.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 10/11/21.
//

import SwiftUI

struct SampleContact: View {
    
    var person: NewProgrammer
    
    var body: some View {

        RoundedRectangle(cornerRadius: 15).fill(Color.blue.opacity(0.3)).frame(width: 300, height: 370).overlay(
            VStack {
                HStack{
                    person.avatar.resizable().frame(width: 60, height: 60)
                    VStack{
                        Text(person.nameP)
                            .fontWeight(.semibold)
                        Text(person.language)
                    }            }.padding(.top,20)
                
                Text("Hola como estan todos, en este caso voy a comentarles sobre.").frame(width: 260, height: 50)
                Image("Ng").resizable().frame(width: 300, height: 220).cornerRadius(15)
            }

        
        ).padding(.bottom,30)
        

    }
}

struct SampleContact_Previews: PreviewProvider {
    static var previews: some View {
        SampleContact(person: NewProgrammer(id: 1, nameP: "Fernando Villegas", language: "Swift, Python", avatar: Image("CircularP")))
    }
}
