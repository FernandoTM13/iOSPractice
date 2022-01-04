//
//  WelcomeView.swift
//  iPadFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 14/12/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {

        ZStack{
            Image("bird").resizable().scaledToFill().ignoresSafeArea()
            VStack{
                
            
            VStack(alignment: .leading){
                    RoundedRectangle(cornerRadius: 30).fill(.white).frame(width: 210, height: 210).overlay(
                        Image(systemName: "globe.europe.africa.fill").resizable().foregroundColor(.black.opacity(0.9)).frame(width: 170, height: 170)
                    )
    
                Text("El turismo ecológico que esperabas").font(.custom("Helvetica Neue", size: 55)).fontWeight(.bold).foregroundColor(.white).frame(width: 600, height: 150, alignment: .leading).shadow(color: .black, radius: 50)
            }.padding(.top, 70)
                Spacer()
                
                VStack{
            
                        Button(action: {
                            
                        }, label: {
                            Text("Iniciar Sesión").font(.custom("Helvetica Neue", size: 32)).fontWeight(.semibold).foregroundColor(.black).padding(25).frame(width: 400, height: 90).background(Color.white).cornerRadius(30)
                        }).padding()
                    
                    
                    
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Registrarme").font(.custom("Helvetica Neue", size: 32)).fontWeight(.semibold).foregroundColor(.black).padding(25).frame(width: 400, height: 90).background(Color.white).cornerRadius(30)
                    }).padding(.bottom, 30)
                }
              
                    
                
            }
                
          
           
    
        }

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
