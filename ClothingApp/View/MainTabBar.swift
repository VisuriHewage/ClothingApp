//
//  MainTabBar.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-17.
//

import SwiftUI

struct MainTabBar: View {
    
    
    var body: some View {
        TabView(){
            HomePageView()
            .tabItem {
                Image(systemName: "house").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    Text("Home")
                }
            }
        }
           
    }


#Preview {
    MainTabBar()
    
}
