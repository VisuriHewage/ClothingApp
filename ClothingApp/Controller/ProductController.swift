//
//  ProductController.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-24.
//

//import Foundation
//
//class ProductController:ObservableObject{
//    @Published var products: [ProductViewModel]=[]
//    
//    func fetchProdDetails(){
//        guard let url = URL(string: "") else{
//            print("Invalid URL")
//            return
//        }
//        
//        URLSession.shared.dataTask(with: url){data, response, error in
//            guard let data = data else{
//                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
//                      return
//            }
//            
//            do{
//                self.products = try JSONDecoder().decode([ProductViewModel].self, from: data)
//            } catch{
//                print("Error Decoding : \(error)")
//            }
//        }.resume()
//    }
//    
//}
