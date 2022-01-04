//
//  LoginView.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 6/12/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var ispresentingSheet: Bool = false
    var body: some View {
        VStack {
 
            Text("Kambista").font(.custom("Helvetica Neue", size: 40))
            Image(systemName: "network").resizable().frame(width: 200, height: 200).padding(.top,20).padding(.bottom,50)
            VStack{
                Button(action: {
                    
                }, label: {
                    Text("Iniciar Sesión").padding().frame(width: 190).background(Color.blue).foregroundColor(.white).cornerRadius(10)
                })
                
                Button(action: {
                    self.ispresentingSheet.toggle()
                    
                }, label: {
                    Text("Registrarme").padding().frame(width: 190).background(Color.gray).foregroundColor(.white).cornerRadius(10)
                }).sheet(isPresented: $ispresentingSheet, content: {
                    LoginViewDetailed()
                })
                
                
            }.padding(.top,20).offset(y: 50)
        }
    }}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
