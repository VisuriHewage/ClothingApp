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
    //let prod: Product
    var body: some View {
        
        if let product = product{
            HStack{
                
                //                Image("p2")
                //                .resizable()
                //                .aspectRatio(contentMode: .fit)
                //                .frame(width: 50)
                //                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                if let url = URL(string: "https://lk-kellyfelder.s3.ap-southeast-1.amazonaws.com/gallery"+product.imageURL){
                    AsyncImage(url: url){
                        image in image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.top, 10)
                    } placeholder: {
                        ProgressView()
                    }
                }else{
                    Image(systemName: "Photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                }
                
                VStack(alignment: .leading, spacing: 10){
                   // Text(product?.name ?? "")
                    Text(product.name)
                        .bold()
                        .padding(.top, 15)
                    
//                    Text("Rs \(product?.price ?? "")")
                    Text("$ \(product.price)")
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
}

#Preview {
//    Group
//       {
//            var sample = Product(id: "1",name: "bbb",price: "mm",prdType: "",collectionName: "j",v:0,imageURL:"h",description: "kkk")
//           ProductRowView(qty: 0, productID: "",prod: sample)
//       }
    
    ProductRowView(qty: 0, productID: "")
}

