//
//  SearchView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-26.
//

import SwiftUI


struct SearchView: View {
    @StateObject var prodView = ProductViewModel()
    
    @State var selectedProd: [Product] = []
    @State private var searchProd = ""
    @State private var inList: Bool = false
    @State private var inShowdata : Bool = false
    @State private var imageData : Data?
    var product : Product?
    
    var filteredProduct: [Product]{
        guard searchProd.isEmpty else{
            return  prodView.products}
        return prodView.products.filter{$0.name.localizedCaseInsensitiveContains(searchProd)}
        
    }
    var body: some View {
        NavigationStack{
            List(filteredProduct, id: \.id){
                product in
                HStack(spacing: 17){
//                    Image("p1")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                        .frame(width: 44, height: 44)
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
                    
                    Text(product.name)
                        .font(.caption2)
                        .padding()
                }.onAppear{
                    //guard let imageUrlString = product.imageURL,
//                    let imageUrl = URL(string: "https://lk-kellyfelder.s3.ap-southeast-1.amazonaws.com/gallery" + product.imageURL); 
//                    else{
//                        return
//                    }
//                    URLSession.shared.dataTask(with: imageUrl){
//                        data, response, error in
//                        guard let data = data, error == nil else{
//                            print("Error in image Loading")
//                            return
//                        }
//                        
//                        DispatchQueue.main.async{
//                            self.imageData = data
//                        }
//                    }.resume()
                }
            }
            .navigationTitle("Search Products")
            .searchable(text: $searchProd, prompt: "Search")
        }
    }
    func loadImage(imgUrl:String){
        
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
    SearchView()
}
