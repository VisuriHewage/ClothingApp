//
//  ProductCollections.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import Foundation

struct ProductCollections: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let imageName: String
}

let productCollections = [ ProductCollections(name: "ELEGANTIA", imageName: "p2"),
ProductCollections(name: "LUSH", imageName: "p3"),ProductCollections(name: "SLAY IN COZY", imageName: "p4"),ProductCollections(name: "BLANDUS", imageName: "p5")
]
