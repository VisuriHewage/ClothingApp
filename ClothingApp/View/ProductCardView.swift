//
//  ProductCardView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct ProductCardView: View {
    let product : ProductsModel
    var body: some View {
        VStack{
            
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 130, height: 130)
                .cornerRadius(2)
            Text(product.name)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.O_2)
            Text("$\(product.price)")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.O_2)
                
            
            
        }.padding()
            .background(Color.white)
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius:  12).stroke(Color.O_2, lineWidth: 1))
           // .shadow(radius: 4)
    }
}

#Preview {
    ProductCardView(product: product[0])
}
