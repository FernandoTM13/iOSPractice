//
//  TabBarPractice.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 17/11/21.
//

import SwiftUI


struct ExampleViewNow: View{
    var body: some View{
        
      
            NavigationView{
                ZStack{
                Color.gray
                Text("How are you doing")
                }.navigationTitle("Example")
            
        }
    }
}


struct TabBarPractice: View {
    
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    
    var body: some View {

        TabView{
            FormsPractice().tabItem{
                Text("Forms")
            }
            
            CirclePracticeWatch().tabItem {
                Text("Middle")
            }
            
            ExampleViewNow().tabItem{
                Text("Configuration")
            }
        }
    }
}

struct TabBarPractice_Previews: PreviewProvider {
    static var previews: some View {
        TabBarPractice()
    }
}
