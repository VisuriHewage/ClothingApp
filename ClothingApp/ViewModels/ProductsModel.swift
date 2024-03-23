//
//  ProductsModel.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import Foundation

struct ProductsModel: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let imageName: String
    let price: String
}

let product = [ ProductsModel(name: "T-Shirt", imageName: "p1", price: "200 USD"),
                ProductsModel(name: "T-Shir2", imageName: "p3", price: "200 USD")
]
