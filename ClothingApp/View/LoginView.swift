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
                        
                       
                        
                    }.padding(.trailing)
                    
                    
                    
                    
                }.frame(height: 60)
                    //.padding(.bottom, 200)
                
                Divider()
                    .background(Color.black)
                    .padding(.vertical, 10)
                //VStack{
                    
                    Text("CUSTOMER LOGIN")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .foregroundColor(.black)
                        .padding(.top, 35)
                    
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.O_2)
                        .padding(.top, 10)
               // }.padding()
                
                
                VStack(spacing: 20){
                    
                    TextField("USER NAME",text: $email)
                        .padding()
                        .border(Color.O_2, width: 1)
                        .cornerRadius(7)
                        .padding(.horizontal)
                    
                    SecureField("PASSWORD", text: $password)
                        .padding()
                        .border(Color.O_2, width: 1)
                        .cornerRadius(7)
                        .padding(.horizontal)
                        
                    
                    //Spacer()
                    Button(action:{
                        
                    }){
                        Text("Forget Password?")
                            .font(.subheadline)
                            .foregroundColor(.O_1)
                    }.padding(.trailing, 20)
                    
                    Button(action: {
                        
                    }){
                        Text("LOGIN")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.O_2)
                            .cornerRadius(8)
                        
                    }.padding(.horizontal)
                    
                    
                    Divider()
                    
                    Text("FOLLOW US ON")
                    Spacer()
                    Text("Corporate Office")
                    Text("12th Floor,Mayer St,Colombo 2")
                    
                    
                }
                .padding(.vertical, 30)
                
                Spacer()
            }
            //.background(Color.O_4)
            .navigationBarTitle("",displayMode: .inline)
            .navigationBarHidden(true)
        }//.padding(.bottom, 600)
        
    }
}

#Preview {
    LoginView()
}
