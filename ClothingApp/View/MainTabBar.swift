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
            .tag(0)
            LoginView()
                .tabItem { Image(systemName: "person").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    Text("Account")}.tag(1)
            CartView()
                .tabItem { Image(systemName: "cart").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    Text("Cart")}
                .tag(2)
            ProductCollectionView()
                .tabItem{ Image(systemName: "storefront")
                    Text("Collection")
                    
                }.tag(3)
        }.accentColor(.O_1)
        }
           
    }


#Preview {
    MainTabBar()
    
}
