//
//  FormsPractice.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 13/11/21.
//

import SwiftUI

struct FormsPractice: View {
    @State private var nickName: String = ""
    @State private var lastName: String = ""
    @State private var birthDate = Date()
    @State private var getNews: Bool = false
    @State private var numberOfLikes = 1
    @State private var animationView: Bool = true

    var body: some View {
        
        NavigationView{
            VStack {
                Form{
                    Section(header: Text("Personal Information")){
                        TextField("First Name", text: $nickName )
                        TextField("Last Name", text: $lastName)
                        DatePicker("BirthDate", selection: $birthDate, displayedComponents: .date)
                    }
                    
                    Section(header: Text("Data choosing")){
                        Toggle("Get News Updates", isOn: $getNews).toggleStyle(SwitchToggleStyle(tint: .red))
                        Stepper("Increase Likes", value: $numberOfLikes, in: 1...10)
                        Text("Numero of likes \(numberOfLikes)")
                        Link("Terms of Service", destination: URL(string: "https://www.youtube.com/watch?v=m0QQ-hWs8fc&t=342s")!)
                        
                    }
                    Circle().trim(from: animationView ? 0.1: 0.99, to: 1).stroke( AngularGradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))], center: .center, angle: .degrees(10))
                        , style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round)).frame(width: 170, height: 170).rotationEffect(.degrees(90))
                        .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0)).padding().padding(.top,20)
                        .onTapGesture {
                            withAnimation(.easeInOut){
                                self.animationView.toggle()
                            }
                          
                        }.shadow(color: .black.opacity(0.3), radius: 10).overlay(Text("60%").font(.custom("Helvetica Neue", size: 45)).fontWeight(.semibold))
                    
                }.accentColor(.red).navigationTitle("Account")
                
            }
        }
    }
}

struct FormsPractice_Previews: PreviewProvider {
    static var previews: some View {
        FormsPractice()
            .previewInterfaceOrientation(.portrait)
    }
}
