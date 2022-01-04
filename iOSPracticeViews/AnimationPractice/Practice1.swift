//
//  Practice1.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 6/11/21.
//

import SwiftUI

struct Practice1: View {
    
    @State var AnimationValue: Bool = false
    
    var body: some View {
        
        
        VStack{
            Button("Cambiar"){
                withAnimation(.default){
                    AnimationValue.toggle()

                }
            }.padding(.top,40)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: AnimationValue ? 50: 200).frame(width: AnimationValue ? 300: 200, height: AnimationValue ? 150: 200).rotationEffect(Angle(degrees: AnimationValue ? 120: 360))
            
            Spacer()
            
        }
        
        
    }
}

struct Practice1_Previews: PreviewProvider {
    static var previews: some View {
        Practice1()
    }
}
