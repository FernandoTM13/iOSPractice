//
//  RegisterScreen.swift
//  iPadFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 21/12/21.
//

import SwiftUI

struct RegisterScreen: View {
    
    @State var firstName = ""
    @State var  lastName = ""
    @State var userName = ""
    
    var body: some View {
        
        
        VStack {
            Text("Sign Up").font(.custom("Helvetica Neue", size: 30)).fontWeight(.bold)
            Form{
                    Section(header: Text("First Name").foregroundColor(.black)){
                        TextField("Name", text: $firstName)
                    }
                    Section(header: Text("Last Name").foregroundColor(.black)){
                        TextField("Last Name", text: $lastName)
                    }
                    Section(header: Text("User Information").foregroundColor(.black)){
                        HStack{
                            TextField("User", text: $userName)
                            TextField("Cellphone", text: $userName )

                        }

                    }
            }
        }
        
        
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
