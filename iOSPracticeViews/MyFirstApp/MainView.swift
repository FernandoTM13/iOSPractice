//
//  MainView.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 10/10/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack{
                PicturePractice().frame(width: 200, height: 200).padding()
                Divider().offset(y: 60)
                MapView().frame(height: 400).offset(y: 50)
                Divider()
                ContentView().frame(height: 1000).offset(y: 50)
            }
        }
      

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
