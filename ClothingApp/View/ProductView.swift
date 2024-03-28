//
//  ProductView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-19.
//

import SwiftUI

struct ProductView: View {
    //    @ObservedObject var controller = ProductController()
    // @StateObject var productVM : ProductViewModel = ProductViewModel()
    //var noOfPro:Int
    @StateObject var productVM : testModel
    @State private var selectedFilter = 0
    @State private var selectedType: String = "All"
    @State private var selectedProd : Product?
    @State private var isProductDetailActive = false
    @EnvironmentObject var cartManager : CartManager
    let filterOptions = ["All","Tops","Dresses","Jeans","Skirts"]
    let collectionName: String
    
    init(collectionName : String){
        _productVM = StateObject(wrappedValue: testModel(collectionName: collectionName))
        self.collectionName = collectionName
    }
    
    var body: some View {
        //NavigationView{
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
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label:{
                    Carticon(numberOfProducts: cartManager.cartItems.count)
                        .padding()
                }
            
            
//            Button(action: {
//                
//            }){Image(systemName: "line.horizontal.3")
//                    .font(.title3)
//                    .foregroundColor(.black)
//            }.padding(.trailing)
        }.frame(height: 60)
            .background(Color.white)
        
        Divider()
            .background(Color.black)
        HStack{
            Button(action: {
                
            }){NavigationLink(destination: ProductCollectionView()){
                Image(systemName: "chevron.left")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundColor(.black)
            }.padding(.top, 20)
                    .padding(.leading)
            }
            
            Text(" \(collectionName)")
                .font(.system(size: 25, weight: .semibold, design: .rounded))
                .foregroundColor(.O_5)
                .padding(.leading)
                .padding(.top, 20)
            
            
            Spacer()
        }
        Spacer()
        //                Picker(selection: $selectedFilter, label: Text("Filter")){
        //                    ForEach(0..<filterOptions.count){index in
        //                        Text(filterOptions[index])
        //                            .tag(index)
        //                            .font(.system(size: 10, weight: .regular))
        //                            .foregroundColor(selectedFilter == index ? .O_2 : .O_3)
        //                    }
        //                }
        //                .accentColor(.O_2)
        //                .pickerStyle(SegmentedPickerStyle())
        //                    .padding()
        Picker(selection: $selectedType, label: Text("Select Product Type")){
            Text("All").tag("All")
            Text("Top").tag("Top")
            Text("Jean").tag("Jeans")
            Text("Dress").tag("Dress")
            Text("Skirt").tag("Skirt")
            Text("JumpSuit").tag("JumpSuit")
        }.pickerStyle(SegmentedPickerStyle())
            .onChange(of: selectedType){
                newValue in
                if newValue == "All"{
                    productVM.loadDataCombine(forCollection: collectionName)
                }else{
                    productVM.filterByType(forProductType: newValue)
                }
            }
        
        ScrollView{
            Spacer()
            LazyVGrid (columns : Array(repeating: GridItem(), count: 2),spacing: 15){
                ForEach(productVM.products, id: \.id){
                    product in
                    
                    Button(action:{
                        selectedProd = product
                        isProductDetailActive = true
                    }){
                        ProductCardView(product: product)
                    }.padding()
                    //                                NavigationLink(destination: SearchScreen(product: product)){
                    //                                    ProductCardView(product: product)
                    //                                }
                }
            }
            
        }
        .navigationTitle("")
        .background(
            NavigationLink(destination: selectedProd.map{ ProductDetailView(product: $0)},isActive: $isProductDetailActive){
                EmptyView()
            })
        
    }
    
        .navigationBarHidden(true)
    //.padding(.bottom, 10)
    
}
        
                    

  //  }
}

#Preview {
    ProductView(collectionName: "LUSH")
        .environmentObject(CartManager())
}
