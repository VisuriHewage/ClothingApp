//
//  ProductRowView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-27.
//

import SwiftUI

struct ProductRowView: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product?
    var qty: Int
    var productID: String
    
    var body: some View {
        HStack{
            
                Image("p2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 10){
                Text(product?.name ?? "")
                    .bold()
                
                Text("Rs \(product?.price ?? "")")
                Text("Quantity: \(qty)")
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(productID: productID)
                }
        }.padding(.horizontal)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
    }
}

#Preview {
    ProductRowView(qty: 0, productID: "")
}
