//  ContentView.swift
//  MyFirstApp
//  Created by Fernando Miguel Villegas Pancca on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 3){
            Text("Hello Fernando, como estas?")
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 1.0, saturation: 0.834, brightness: 0.454))
                .padding().background(Color.orange)
            
            Spacer()
            
            ZStack{
                Text("").frame(maxWidth:.infinity , maxHeight: .infinity).background(Color.purple).padding(20)
                
                Text("").frame(maxWidth:.infinity , maxHeight: .infinity).background(Color.red).padding(40)
                
                Text("").frame(maxWidth:.infinity , maxHeight: .infinity).background(Color.gray).padding(60)
            }
            
            Spacer()
            
            HStack{
                Text("Seras un programador en Swift").padding().background(Color.orange)
                                
                Text("Este es una texto horizontal").padding(35).background(Color.red)
            }
            
         
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
