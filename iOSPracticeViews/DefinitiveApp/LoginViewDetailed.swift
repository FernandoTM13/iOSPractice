//
//  LoginViewDetailed.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 7/12/21.
//

import SwiftUI
import MapKit

struct LoginViewDetailed: View {
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var birthdate = Date()
    @State var emailP = ""
    @State var username = ""
    @State var password = ""

    
    var body: some View {

        NavigationView{
            VStack{
                
            
                Form{
                    Section(header: Text("Personal info")){
                        TextField("First Name", text: $firstname)
                        TextField("Last Name", text: $lastname)
                        DatePicker("Birthday", selection: $birthdate, displayedComponents: .date )
                    }
                    Section(header: Text("User Info")){
                        TextField("Username", text: $username)
                        TextField("Email", text: $emailP).keyboardType(.emailAddress).disableAutocorrection(true)
                        SecureField("Password", text: $password).keyboardType(.default)
                    }
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Registrarme").padding().background(.blue).foregroundColor(.white).cornerRadius(10)
                }).padding(30)
                
            }.navigationTitle("Register")
            

        }

    }
}

struct LoginViewDetailed_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewDetailed()
    }
}
