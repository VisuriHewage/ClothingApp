//
//  ProductModel.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-25.
//

//import Foundation
//
//struct ProductModel: Identifiable, Hashable, Decodable{
//    let id = UUID()
//    let name: String
//    //let imageName: String
//    let price: String
//}

//import Foundation
//
//// MARK: - Welcome
//struct ProductModel: Decodable {
//    let msg: String
//    let data: [Product]?
//}
//
//// MARK: - Datum
//struct Product: Decodable {
//    let category: CategoryListNew
//    let id : String
//    let name : String
//    let imageURL: String
//    let price: Int
//    let description: String
//    let v: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case category
//        case id = "_id"
//        case name
//        case imageURL = "imageUrl"
//        case price, description
//        case v = "__v"
//    }
//}
//
//// MARK: - Category
//struct CategoryListNew: Decodable {
//    let catimageURL, catname, cid: String?
//  //  let name, imageURL: String?
//
//    enum CodingKeys: String, CodingKey {
//        case catimageURL = "catimageUrl"
//        case catname, cid
//    }
//}

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct ProductModel: Decodable {
    let msg: String
    let data: [Product]?
}

// MARK: - Datum
struct Product: Decodable, Identifiable {
    let id: String
    let name: String
    let price: String
    let prdType: String
    let collectionName: String
    let v: Int?
    let imageURL : String
    let description: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, price, prdType, collectionName
        case v = "__v"
        case imageURL = "imageUrl"
        case description = "Description"
    }
}
