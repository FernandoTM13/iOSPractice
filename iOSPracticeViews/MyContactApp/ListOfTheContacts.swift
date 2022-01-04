//
//  ListOfTheContacts.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 24/10/21.
//

import SwiftUI

var contactsArray = [(contactData(id: 1, name: "Fernando Villegas", age: 21, language: "Swift, Python", avatar: Image("CircularP"))), (contactData(id: 2, name: "Cristiano Ronaldo", age: 21, language: "Java, Go, JS", avatar: Image("CircularP"))),(contactData(id: 3, name: "Edinson Cavani", age: 21, language: "Cobol, C++", avatar: Image("CircularP"))),(contactData(id: 4, name: "Paolo Guerrero", age: 21, language: "JS, Python", avatar: Image("CircularP")))]


struct ListOfTheContacts: View {
    var body: some View {

            SplashScreenOfContacts()
        
        }
        
    }

struct ListOfTheContacts_Previews: PreviewProvider {
    static var previews: some View {
        ListOfTheContacts()
    }
}


struct SplashScreenOfContacts: View{
    
    @State var SplashAnim: Bool = false
    @State var RemoveSplas: Bool = false
    
    var body: some View {

        ZStack {
            NavigationView{
                    List(contactsArray, id: \.id ){ index in
                        NavigationLink(destination: SpecificPage(auxiliar: index)){
                            ExampleContact(programmer: index)
                        }
                    }.navigationTitle("Contacts")
            }
            
            if !RemoveSplas{
                Color("BG").mask(
                
                    Rectangle().overlay(
                        Image("logo-svg").resizable().aspectRatio( contentMode: .fit).frame(width: 80, height: 80).scaleEffect(SplashAnim ? 70: 1).blendMode(.destinationOut)
                    
                    )
                
                ).ignoresSafeArea().preferredColorScheme(SplashAnim ? nil: .light).onAppear{
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                        withAnimation(.easeInOut(duration: 0.4)){
                            SplashAnim.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                RemoveSplas = true
                            }
                        
                        }
                        
                    }
                }
            }
        }
    }
}
