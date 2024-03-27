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
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding()
                ZStack{
                    Button(action: {
                        
                    }){
                        Text("Check Out")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.O_2)
                            .cornerRadius(8)
                        
                    }.padding(.horizontal)
                }
                
            } else {
                Text("Your Cart Is Empty!")
                    .font(.system(size: 25))
            }
            
        }
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
