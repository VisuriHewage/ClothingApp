//
//  CartView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-19.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.cartItems.count > 0 {
                ForEach(cartManager.cartItems, id: \.product?.id){
                    cartItem in
                    ProductRowView(product: cartItem.product, qty: cartItem.qty, productID: cartItem.product?.id ?? "")
                }
                HStack{
                    Text("Your cart total is ")
                    Spacer()
                    Text("Rs \(cartManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Cart Is Empty!")
            }
            
        }
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
