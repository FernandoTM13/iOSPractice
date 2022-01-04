//
//  SplasScreenContact.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 6/11/21.
//

import SwiftUI

struct SplasScreenContact: View {
    var body: some View {
    
        SplashAnimationContact()
    }
}

struct SplasScreenContact_Previews: PreviewProvider {
    static var previews: some View {
        SplasScreenContact()
    }
}


struct SplashAnimationContact: View{
    
    @State var SplashAnimationC: Bool = false
    
    var body: some View {
        
        ZStack{
            
            ListOfTheContacts()
            
            Color("BG").mask(
            
                Rectangle().overlay(
                    
                    Image("logo-svg").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80).scaleEffect(SplashAnimationC ? 70 : 1).blendMode(.destinationOut)
                
                
                )
                
            ).ignoresSafeArea().onAppear{
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                    
                    withAnimation(.easeInOut(duration: 0.4)){
                        SplashAnimationC.toggle()
                    }
                }
                
            }
        }
        
    }
    
}
