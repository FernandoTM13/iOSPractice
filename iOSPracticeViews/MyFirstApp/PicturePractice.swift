//
//  PicturePractice.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 10/10/21.
//

import SwiftUI

struct PicturePractice: View {
    var body: some View {

        VStack {
            Text("California East Coast")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center).padding(25)
            
          Image("macOS-Big-Sur-Daylight-Wallpaper-iDownloadBlog-7").resizable().frame(width: 250, height: 250).clipShape(Circle()).overlay(Circle().stroke(Color.red, lineWidth: 5)).padding(20).shadow(color: Color.black, radius: 4)
    
        }

    }
}


struct PicturePractice_Previews: PreviewProvider {
    static var previews: some View {
        PicturePractice()
    }
}
