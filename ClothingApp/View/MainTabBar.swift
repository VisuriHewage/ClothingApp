//
//  MainTabBar.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-17.
//

import SwiftUI

struct MainTabBar: View {
    
    @StateObject var cartManager = CartManager()
    var body: some View {
        TabView(){
            HomePageView()
                .environmentObject(cartManager)
            .tabItem {
                Image(systemName: "house").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    Text("Home")
                }
            .tag(0)
            LoginView()
                .tabItem { Image(systemName: "person").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    Text("Account")}.tag(1)
//                 CartView()
//                .environmentObject(cartManager)
//                .tabItem { Image(systemName: "cart").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
//                    Text("Cart")}
//                .tag(2)
            SearchView()
                .environmentObject(cartManager)
                .tabItem{
                    Image(systemName: "magnifyingglass").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    Text("Search").tag(2)
                }
            ProductCollectionView()
                .environmentObject(cartManager)
                .tabItem{ Image(systemName: "storefront")
                    Text("Collection")
                    
                }.tag(3)
        }.accentColor(.O_1)
        }
           
    }


#Preview {
    MainTabBar()
    
}
