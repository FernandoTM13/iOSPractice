//
//  BindingView.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 14/10/21.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var contador: Int
    
    var body: some View {
        
        VStack{
            Text("Esta es una Binding View")
            
            Button("Aumentar en 2")
            {
                contador += 2
            }
        }
    
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(contador: .constant(5))
        
    }
}
