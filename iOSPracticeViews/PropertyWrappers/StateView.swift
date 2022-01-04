//
//  StateView.swift
//  MyFirstApp

import SwiftUI

struct StateView: View {
    
    @State private var contador = 0
    @State private var selection: Int?
    
    var body: some View {
        
        NavigationView{
            VStack {
                Text("Esta es la interfaz 1")
                Text("El valor es: \(contador)")
                
                Button("Presiona"){
                    contador += 1
                    
                }
           
            NavigationLink(destination: BindingView(contador: $contador), tag: 1, selection: $selection ){
                
                Button("Ir al Binding View"){
                    selection = 1
                }
                
            } }.navigationTitle("Pantalla de navegación")
        }
       
        

    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
