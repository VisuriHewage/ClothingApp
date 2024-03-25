//
//  HomePageView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-17.
//

import SwiftUI

struct HomePageView: View {
    let images = ["p1","p2","p3","p4","p5"]
    let colors: Color = .orange
    @State private var currentIndex=0
    @StateObject var prodVM : ProductViewModel = ProductViewModel()
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 0){
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
                        }
                        
                       
                        Button(action: {
                            
                        }){Image(systemName: "line.horizontal.3")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                    }.padding(.trailing)
                    
                    
                        
                    
                }.frame(height: 50)
                    .padding(.bottom, 10)
                
                 Divider()
                    .background(Color.black)
             
                    TabView(selection: $currentIndex){
                        ForEach(0..<images.count){ index in
                            VStack{
                                Image(self.images[index])
                                    .resizable()
                                    .frame(width: .infinity, height: 255)
                                    //.scaledToFit()
                                    .cornerRadius(20)
                                HStack(spacing: 10){
                                    ForEach(0..<self.images.count){ i in
                                        Circle()
                                            .fill(i == index ? colors : Color.gray)
                                            .frame(width: 10, height: 10)
                                        
                                    }
                                }
                                .padding()
                            }
                            .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .onReceive(timer){ _ in
                        withAnimation{
                            currentIndex = (currentIndex+1) % images.count
                        }
                    }
                    .padding(.top, 20)
                
                Text("NEW ARRIVALS")
                    .font(.system(size: 25, weight: .semibold, design: .default))
                    .foregroundColor(.black)
                Text("__")
                //    .padding(.bottom, 240)
                
                ScrollView(){
                   // HStack(spacing: 10){
                        LazyVGrid(columns: Array(repeating: GridItem(), count: 2),spacing: 15){
                            ForEach(prodVM.products, id: \.id){
                                product in
                                ProductCardView(product: product)
                            }
                        }
                    //}
                }
                .padding()
                    
                // .padding(.horizontal)
                // .background(Color.white)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .background()
            
        }
    }
}
#Preview {
    HomePageView()
}
