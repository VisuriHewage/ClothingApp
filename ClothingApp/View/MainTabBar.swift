//
//  MainTabBar.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-17.
//

import SwiftUI

struct MainTabBar: View {
    @Binding var tabselection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, title: String)]=[
    ("house","Home"),
    ("heart","Favourites"),
    ("person","Profiles")
    ]
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 80)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .shadow(radius: 2)
            HStack{
                ForEach(0..<4){ index in
                    Button {
                        tabselection=index + 1
                    } label: {
                        VStack(spacing: 8){
                            Spacer()
                            
                            
                            
                            
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    MainTabBar(tabselection: .constant(1))
        .previewLayout(.sizeThatFits)
        .padding(.vertical)
}
