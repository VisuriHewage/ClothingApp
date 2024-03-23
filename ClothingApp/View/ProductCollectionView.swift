//
//  ProductCollectionView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct ProductCollectionView: View {
    
   // let productCollection : [ProductCollections]=[]
    //= ["p2","p3","p4","p5"]
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                HStack{
                    Text("FABULOUS")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.O_1)
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer()
                    Button(action: {
                        
                    }){Image(systemName: "bag")
                            .font(.title3)
                            .foregroundColor(.black)
                    }.padding(.trailing)
                    
                    
                    Button(action: {
                        
                    }){Image(systemName: "line.horizontal.3")
                            .font(.title3)
                            .foregroundColor(.black)
                    }.padding(.trailing)
                }.frame(height: 60)
                    .background(Color.white)
                
                Divider()
                Spacer()
                Text("ALL COLLECTIONS")
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.O_2)
                    .padding(.top, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    
                Spacer()
                ScrollView{
                    Spacer()
                    
                        ForEach(productCollections, id: \.id){
                        collection in
                            NavigationLink(destination: ProductView(collectionName: collection.name)){
                                CollectionCardView(collection: collection)
                            }
                                
                            
                        }
                    
                   
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ProductCollectionView()
}
