//
//  ProductCardView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct ProductCardView: View {
    var product : Product?
    @State private var imageData : Data?
    
    var body: some View {
        VStack{
            
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
            
//            Image("p1")
//                .resizable()
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .frame(width: 130, height: 130)
//                .cornerRadius(2)
            Text(product?.name ?? "gg")
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundColor(.black)
            Text("$\(product?.price ?? "")")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.black)
                
            
            
        }.onAppear{
            loadImage()
        }
        .padding()
            .background(Color.white)
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius:  12).stroke(Color.O_2, lineWidth: 1))
           // .shadow(radius: 4)
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
}
