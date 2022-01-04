//
//  PictureAndColorsPractice.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 7/11/21.
//

import SwiftUI

struct PictureAndColorsPractice: View {
    @State var title: String = ""
    
    var body: some View {

        VStack{
            
            Text(title).foregroundColor(Color.blue)
            
            Button( action: {
                
                self.title = "Hey Bart"
                
                
            }, label: {
            
                RoundedRectangle(cornerRadius: 20).fill(Color(#colorLiteral(red: 0.4503178, green: 0.02606064454, blue: 0.04764699936, alpha: 1))).frame(width: 100, height: 100).overlay(Image("CircularP").resizable().frame(width: 70, height: 70)).shadow(color: .black, radius: 2)
            })

          

            
            
        }
        
     

    }
}

struct PictureAndColorsPractice_Previews: PreviewProvider {
    static var previews: some View {
        PictureAndColorsPractice()
    }
}
