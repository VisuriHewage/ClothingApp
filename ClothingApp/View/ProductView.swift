//
//  ProductView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-19.
//

import SwiftUI

struct ProductView: View {
    @State private var selectedFilter = 0
    let filterOptions = ["All","Tops","Dresses","Jeans","Skirts"]
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                //VStack(spacing: 0){
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
                    .background(Color.black)
                HStack{
                    Text("CATEGORY")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.leading)
                        .padding(.top, 20)
                        
                    Spacer()
                }
                Picker(selection: $selectedFilter, label: Text("Filter")){
                    ForEach(0..<filterOptions.count){index in
                        Text(filterOptions[index])
                            .tag(index)
                            .font(.system(size: 10, weight: .regular))
                            .foregroundColor(selectedFilter == index ? .O_2 : .O_3)
                    }
                }
                .accentColor(.O_2)
                .pickerStyle(SegmentedPickerStyle())
                    .padding()
            
                
                ScrollView{
                    
                }
    
                }.navigationBarHidden(true)
                    //.padding(.bottom, 10)
                
               
        
                    }

    }
}

#Preview {
    ProductView()
}
