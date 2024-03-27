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
                    .frame(width: .infinity, height: 300)
                    .background(Color.white)
                        .cornerRadius(12)
                        .overlay(RoundedRectangle(cornerRadius:  12).stroke(Color.O_2, lineWidth: 2))
                    .padding()
            }
            Text(product.name)
                .font(.system(size: 20, design: .rounded))
               // .padding(.top, 10)
            VStack(alignment: .leading, spacing: 4){
                Text("Price : $ \(product.price).00")
                    .font(.system(size: 15, design: .rounded))
                   // .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                    .padding(.top, 10)
                Text(product.description)
                    .font(.system(size: 15, design: .rounded))
                    .padding(.leading)
                    .padding(.bottom, 5)
                Button(action: {
                    cartManager.addToCart(product: product)
                }, label: {
                    Text("ADD TO CART")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.O_2)
                        .cornerRadius(8)
                }).padding()
            }
        }.navigationTitle("Product Details")
            .font(.system(size: 25, design: .rounded))
    }
}

//#Preview {
//    Group
//    {
//        var sample = Product(id: "1",name: "bbb",price: "mm",prdType: "",collectionName: "j",v:0,imageURL:"h",description: "kkk")
//        SearchScreen(product: sample)
//    }
//}
