//
//  Carticon.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-27.
//

import SwiftUI
 
struct Carticon: View {
    var numberOfProducts : Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag").imageScale(.large)
                .foregroundColor(.black)
                .padding(.top,5)
            
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color(.O_1))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    Carticon(numberOfProducts: 1)
}
