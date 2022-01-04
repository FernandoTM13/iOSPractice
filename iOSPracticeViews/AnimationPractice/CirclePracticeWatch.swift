//
//  CirclePracticeWatch.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 13/11/21.
//

import SwiftUI

struct CirclePracticeWatch: View {
    
    @State var animationBo : Bool = true
    
    var body: some View {
        
        VStack{
            
            Text("60%").font(.custom("Helvetica Neue", size: 60) )
                .fontWeight(.semibold)
                .padding(.bottom,60.0).frame(width: 160, height: 160).onTapGesture {
                    withAnimation(.easeInOut){
                    self.animationBo.toggle()
                    }
                }.shadow(color: .black, radius: 50)
                
            
            Circle()
                .trim(from: animationBo ? 0.1: 0.99, to: 1)
                .stroke(AngularGradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))], center: .center, angle: .degrees(10))
                        
                        , style: StrokeStyle(lineWidth: 25, lineCap: .round , lineJoin: .round))
                .frame(width: 150, height: 150)
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: animationBo ? 120: 180), axis: (x: 1, y: 0, z: 0))
           
        }

    }
}

struct CirclePracticeWatch_Previews: PreviewProvider {
    static var previews: some View {
        CirclePracticeWatch()
    }
}
