//
//  SearchScreen.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-25.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var cartManager : CartManager
    
    let product: Product
   // let onClose: () -> Void
    var body: some View {
        VStack{
            if let imageURL = URL(string: "https://lk-kellyfelder.s3.ap-southeast-1.amazonaws.com/gallery"+product.imageURL),
               let imageData = try? Data(contentsOf: imageURL),
               let uiImage = UIImage(data: imageData){
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding()
            }
            Text(product.name)
                .font(.title)
                .padding()
            Text(product.price)
                .font(.title)
                .padding()
            Text(product.description)
                .font(.title)
                .padding()
            Button(action: {
                cartManager.addToCart(product: product)
            }, label: {
                Text("ADD TO CART")
            })
            
        }.navigationTitle(product.name)
    }
}

//#Preview {
//    Group
//    {
//        var sample = Product(id: "1",name: "bbb",price: "mm",prdType: "",collectionName: "j",v:0,imageURL:"h",description: "kkk")
//        SearchScreen(product: sample)
//    }
//}
