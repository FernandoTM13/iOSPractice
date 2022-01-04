//
//  CompleteList.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 10/11/21.
//

import SwiftUI
import MapKit

var ContactDupla: [NewProgrammer] = [(NewProgrammer(id: 0, nameP: "Fernando Villegas", language: "Swift, Python", avatar: Image("CircularP"))), (NewProgrammer(id: 1, nameP: "Diego Esperanza", language: "Go, JavaScript", avatar: Image("CircularP"))), (NewProgrammer(id: 2, nameP: "Mariano Martinez", language: "Java, C++", avatar: Image("CircularP"))), (NewProgrammer(id: 3, nameP: "Cristiano Ronaldo", language: "Kotlin, Java", avatar: Image("CircularP"))),(NewProgrammer(id: 0, nameP: "Fernando Villegas", language: "Swift, Python", avatar: Image("CircularP"))), (NewProgrammer(id: 1, nameP: "Diego Esperanza", language: "Go, JavaScript", avatar: Image("CircularP"))), (NewProgrammer(id: 2, nameP: "Mariano Martinez", language: "Java, C++", avatar: Image("CircularP"))), (NewProgrammer(id: 3, nameP: "Cristiano Ronaldo", language: "Kotlin, Java", avatar: Image("CircularP"))),NewProgrammer(id: 0, nameP: "Fernando Villegas", language: "Swift, Python", avatar: Image("CircularP"))]


struct CompleteList: View {
    var body: some View {

        VStack{
            ScrollView{
                ForEach(ContactDupla.indices){ index in
                    SampleContact(person: ContactDupla[index])
                }

            }.navigationTitle("Contacts")
            Spacer()

        }.padding(.top,40).ignoresSafeArea()
       
    }
}

struct CompleteList_Previews: PreviewProvider {
    static var previews: some View {
        CompleteList()
    }
}
