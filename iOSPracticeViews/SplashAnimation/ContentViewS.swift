//
//  ContentViewS.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 4/11/21.
//

import SwiftUI

struct ContentViewS: View {
    var body: some View {

        SplashScreen()
    }
}

struct ContentViewS_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewS().preferredColorScheme(.dark)
    }
}

struct SplashScreen: View{
    
    @State var splashAnimation: Bool = false
    
    var body: some View {
        
        ZStack{
            
            Image("HomeLight").resizable().aspectRatio(contentMode: .fill ).opacity(splashAnimation ? 1 : 0)
            
            Color("BG").mask(
                
                Rectangle().overlay(
                
                    Image("logo-svg").resizable().aspectRatio( contentMode: .fit).frame(width: 80, height: 80).scaleEffect(splashAnimation ? 70 : 1 ).blendMode(.destinationOut)
                
                )
               
            )
            
        }.ignoresSafeArea().preferredColorScheme( splashAnimation ? nil: .light).onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                
                    withAnimation(.easeInOut(duration: 0.4)){
                        splashAnimation.toggle()
                    
                }
            }
            
        }


    }
    
}
