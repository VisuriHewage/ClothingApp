//
//  ProductCardView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct ProductCardView: View {
    var product : Product?
    var body: some View {
        VStack{
            
            Image("p1")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 130, height: 130)
                .cornerRadius(2)
            Text(product?.name ?? "gg")
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundColor(.black)
            Text("$\(product?.price ?? "")")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.black)
                
            
            
        }.padding()
            .background(Color.white)
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius:  12).stroke(Color.O_2, lineWidth: 1))
           // .shadow(radius: 4)
    }
}

#Preview {
    //let  sample = ProductsModel(name: "b", price: "78")
    ProductCardView()
}
