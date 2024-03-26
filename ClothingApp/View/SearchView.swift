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
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 44, height: 44)
                    Text(product.name)
                        .font(.caption2)
                        .padding()
                }
            }
            .navigationTitle("Search Products")
            .searchable(text: $searchProd, prompt: "Search")
        }
    }
}

#Preview {
    SearchView()
}
