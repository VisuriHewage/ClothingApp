//
//  ProductCollectionView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-23.
//

import SwiftUI

struct ProductCollectionView: View {
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
                ScrollView{
                    
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ProductCollectionView()
}
