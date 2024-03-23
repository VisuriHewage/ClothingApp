//
//  CollectionCardView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct CollectionCardView: View {
    
    //let collectionName : String
   // let imageName : String
    let collection: ProductCollections
    var body: some View {
        VStack{
            Text(collection.name)
                .font(.system(size: 25, weight: .semibold, design: .serif))
                .foregroundColor(.O_5)
                .padding(.leading)
            Image(collection.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            
            
        }.background(Color.white)
            .cornerRadius(10)
            .padding()
    }
}

#Preview {
    CollectionCardView(collection: productCollections[0])
}
