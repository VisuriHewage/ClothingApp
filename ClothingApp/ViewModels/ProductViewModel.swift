//
//  ProductsModel.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

//import Foundation
//import SwiftUI
//import Combine
//
//
//
//class ProductViewModel : ObservableObject{
//    var compose = Set<AnyCancellable>()
//    
//    @Published var products : [Product]
//}

//let product = [ ProductsModel(name: "T-Shirt", imageName: "p1", price: "200 USD"),
//                ProductsModel(name: "T-Shir2", imageName: "p3", price: "200 USD")
//]

//

//

import Foundation
import SwiftUI
import Combine

class ProductViewModel : ObservableObject{
    
    var compose = Set<AnyCancellable>()
    
    @Published var products : [Product] = []
    //@Published var categories: [CategoryListNew] = []
    var selectedProduct: Product?
    
//    var categoryId: String
    
    init(){
       loadDataCombine()
    }
    func loadDataCombine(){
        let urlString = "https://node-mongo-api-lfn8.onrender.com/api/v1/products"
        
        guard let url = URL(string: urlString) else {return}
        let request = URLRequest(url: url)
        
        let session = URLSession(configuration: .default)
        session.dataTaskPublisher(for: request)
            .map(\.data)
            .retry(3)
            .decode(type: ProductModel.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .sink {
                res in
            } receiveValue: { model in
                guard let productArray = model.data else{ return}
                self.products = productArray
//                self.extractCategories(from: productArray)
            }.store(in: &compose)
      
    }
    
//    private func extractCategories(from products: [ProductList]) {
//            // Extracting categories from products
//            let categories = products.map { $0.category }
//            self.categories = categories
//        }
}

