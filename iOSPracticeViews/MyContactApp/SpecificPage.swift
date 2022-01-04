//
//  SpecificPage.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 24/10/21.
//

import SwiftUI

struct SpecificPage: View {
    
    var auxiliar: contactData
    @State var username: String = ""
    @State var password: String = ""
    @State var mensaje: String = ""
    
    
    var body: some View {

        VStack{
            auxiliar.avatar.resizable().scaledToFit().frame(width: 200, height: 200).padding(.top, 300)
            
            Text(auxiliar.name).fontWeight(.bold).padding(.top,20)
            Text(auxiliar.language).padding(.top,2)
            Spacer()

            VStack {
                Text("Usuario").fontWeight(.regular).padding(.top, 40).offset(x: -103)
                TextField("Username", text: $username).keyboardType(.emailAddress).disableAutocorrection(true).padding(8).font(.headline).background(Color.gray.opacity(0.2)).cornerRadius(6).padding(.horizontal, 60)
                
                Text("Contraseña").padding(.top,15).offset(x: -91)
                SecureField("Username", text: $password).keyboardType(.default).disableAutocorrection(true).padding(8).font(.headline).background(Color.gray.opacity(0.2)).cornerRadius(6).padding(.horizontal, 60)
                
                
                Button(action: {
                    
                    if(username == auxiliar.name){
                      
                        mensaje = "¡Sesión Iniciada!"
                    }else{
                        mensaje = ""
                    }
                    
                    
                }, label: {
                    Text("Iniciar Sesión").fontWeight(.bold).foregroundColor(Color.white).padding().background(Color.black.opacity(0.5)).cornerRadius(10).padding(.top, 35)
                })
                
                Text(mensaje).foregroundColor(Color.blue).padding(.top, 20)
                
                
            }.padding(.bottom,270)
            
        
            }
        }

    }


struct SpecificPage_Previews: PreviewProvider {
    static var previews: some View {
        SpecificPage(auxiliar: contactData(id: 1, name: "Fernando Villegas", age: 21, language: "Swift, Python", avatar: Image("CircularP")))
    }
}
