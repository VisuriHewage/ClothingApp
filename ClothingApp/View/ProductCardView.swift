//
//  ProductCardView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager : CartManager
    var product : Product?
    @State private var imageData : Data?
    
    var body: some View {
        
        //HStack{
            VStack(alignment: .leading){
                
                if let imageData = imageData, let uiImage = UIImage(data: imageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 130, height: 130)
                        .cornerRadius(2)
                } else {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .frame(width: 100, height: 100)
                }
                
                Text(product?.name ?? "gg")
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .foregroundColor(.black)
                Text("$\(product?.price ?? "")")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundColor(.black)
                
                
                
                
            }.onAppear{
                loadImage()
           // }
           // Spacer()
           
        }
        .padding()
            .background(Color.white)
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius:  12).stroke(Color.O_2, lineWidth: 1))
            //.shadow(radius: 5)
            .overlay(
                ZStack{
                    Circle()
                        .fill(Color.O_2)
                        .frame(width: 34, height: 34)
                  Button(action: {
                      cartManager.addToCart(product: product!)
                   }){Image(systemName: "bag")
                           .resizable()
                           .scaledToFit()
                          .foregroundColor(.white)
                          .frame(width: 18, height: 18)
                    }//.padding(.trailing)
                }.padding(.top,5)
                    .padding(.trailing, 1), alignment: .topTrailing)
        
    }
    
    func loadImage(){
        guard let imageUrlString = product?.imageURL,
              let imageUrl = URL(string: "https://lk-kellyfelder.s3.ap-southeast-1.amazonaws.com/gallery"+imageUrlString) else{
            return
        }
        URLSession.shared.dataTask(with: imageUrl){
            data, response, error in
            guard let data = data, error == nil else{
                print("Error in image Loading")
                return
            }
            
            DispatchQueue.main.async{
                self.imageData = data
            }
        }.resume()
    }
}



#Preview {
    //let  sample = ProductsModel(name: "b", price: "78")
    ProductCardView()
        .environmentObject(CartManager())
}
