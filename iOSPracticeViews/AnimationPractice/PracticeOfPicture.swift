//
//  PracticeOfPicture.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 8/11/21.
//

import SwiftUI

struct PracticeOfPicture: View {
    var body: some View {

        VStack{
            
            Image("CircularP").renderingMode(.template).resizable().scaledToFit().frame(width: 200, height: 200).foregroundColor(Color.blue).mask(
            
                Rectangle().overlay(
                    
                    Circle().frame(width: 50, height: 50).blendMode(.destinationOut)
            )
            )
        }


    }
}

struct PracticeOfPicture_Previews: PreviewProvider {
    static var previews: some View {
        PracticeOfPicture()
    }
}
