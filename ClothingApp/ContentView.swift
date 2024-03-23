//
//  ContentView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-17.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity=0.5
    var body: some View {
        if isActive{
            MainTabBar()
        }
        else{
            VStack{
                VStack{
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200,height: 200)
                    
                      //  .frame(maxWidth: .infinity, alignment: .leading)
                        //.padding(.leading)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size=1.5
                        self.opacity=1.0
                    }
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){
                    self.isActive=true
                }
            }
        }
       //Text("")
 
    }
}

#Preview {
    ContentView()
}
