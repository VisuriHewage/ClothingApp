//
//  CartManager.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-27.
//

import Foundation

class CartManager: ObservableObject {
    
    struct CartItem {
        let product: Product?
        var qty: Int
    }
    
    @Published private(set) var cartItems: [CartItem] = []
    @Published private(set) var total: Int = 0
  //   private var cost : Int
    
    func addToCart(product: Product) {
        if let index = cartItems.firstIndex(where: { $0.product?.id == product.id}){
            cartItems[index].qty += 1
        } else {
            cartItems.append(CartItem(product: product, qty: 1))
        }
        
        total += Int(product.price)!
    }
    
    func removeFromCart(productID: String){
        if let index = cartItems.firstIndex(where: { $0.product?.id == productID}) {
            let removedProduct = cartItems[index]
            total -= Int(removedProduct.product?.price ?? "")! * removedProduct.qty
            cartItems.remove(at: index)
        }
    }
    
    func decreaseQuantity(productID: String) {
        if let index = cartItems.firstIndex(where: { $0.product?.id == productID }) {
                if cartItems[index].qty > 1 {
                    cartItems[index].qty -= 1
                    total -= Int(cartItems[index].product?.price ?? "")!
                }
            }
        }
    
}
