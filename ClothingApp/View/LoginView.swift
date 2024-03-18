//
//  LoginView.swift
//  ClothingApp
//
//  Created by Sahana Galagoda on 2024-03-18.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                VStack(spacing: 0){
                    HStack{
                        Text("FABULOUS")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundColor(.red)
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
                            
                        }){Image(systemName: "person")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                        Button(action: {
                            
                        }){Image(systemName: "line.horizontal.3")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                    }.padding(.trailing)
                    
                    
                    
                    
                }.frame(height: 60)
                    //.padding(.bottom, 200)
                
                Divider()
                    .background(Color.black)
                    .padding(.vertical, 10)
                
                Text("CUSTOMER LOGIN")
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .padding(.top, 30)
                
                VStack(spacing: 20){
                    
                    TextField("USER NAME",text: $email)
                        .padding()
                        .border(Color.gray, width: 1)
                        .padding(.horizontal)
                    
                    SecureField("PASSWORD", text: $password)
                        .padding()
                        .border(Color.gray, width: 1)
                        .padding(.horizontal)
                    
                    //Spacer()
                    Button(action:{
                        
                    }){
                        Text("Forget Password?")
                            .font(.subheadline)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }.padding(.trailing, 20)
                    
                    Button(action: {
                        
                    }){
                        Text("LOGIN")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.blue)
                            .cornerRadius(8)
                        
                    }.padding(.horizontal)
                    
                    
                    Divider()
                    
                    Text("FOLLOW US ON")
                    Spacer()
                    Text("Corporate Office")
                    Text("12th Floor,Mayer St,Colombo 2")
                    
                    
                }
                .padding(.vertical, 60)
                
                Spacer()
            }
            .background(Color.white)
            .navigationBarTitle("",displayMode: .inline)
            .navigationBarHidden(true)
        }//.padding(.bottom, 600)
        
    }
}

#Preview {
    LoginView()
}
