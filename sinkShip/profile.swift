//
//  profile.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-19.
//

import SwiftUI

struct profile: View {
    
    @State private var name = ""
    
    var body: some View {
        
        NavigationView {
        
        ZStack {
            
            
            
            
            
            Image("ocean")
                .resizable() // allows to change picture
            // .padding(.horizontal)
                .ignoresSafeArea()
                .scaledToFit()   // makes sure to resize only what you change in frame
                .frame(width: 600, height: 1000)
                .position(x: 196, y: 420)
            
            
            
            
            VStack {
                
                Text("Profile")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                
                
                
             
           
                    
                    
                    HStack {
                        
                        
                        
                        
                        Image("anonimou")
                            .resizable() // allows to change picture
                        // .padding(.horizontal)
                            .ignoresSafeArea()
                            .scaledToFit()   // makes sure to resize only what you change in frame
                            .frame(width: 160, height: 200)
                        //  .position(x: 196, y: 420)
                        
                        
                        
                        
                        
                        TextField("", text: $name)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: name.isEmpty) {
                                Text("Write your name")
                                    .foregroundColor(.black)
                                
                                    .bold()
                                    .frame(width: 200, height: 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.linearGradient(colors: [.white, .white], startPoint: .top, endPoint: .bottomTrailing))
                                        
                                    )
                            }
                        
                    }
                
                
                
                
                Text("You are logged \(name)")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
                
                
                
                
              
                
                
                
                
                
               
                    
                    
                Button {
                    
                  //  backToLogIn = false
                    
                    
                } label: {
                    Text("Refresh profile")
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                            
                        )
                        .foregroundColor(.white)
                    
                }
                .padding()
                .offset(y: 40)
                
                
                
                    
                
                
                VStack {
                    
                    
                    
                    Button {
                        
                        
                        
                        
                    } label: {
                        Text("Back to login")
                            .bold()
                            .frame(width: 200, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                
                            )
                            .foregroundColor(.white)
                        
                    }
                    .padding()
                    .offset(y: 40)
                    
                    
                    
                    VStack {
                        
                        
                        NavigationLink(destination:menu()) {
                            Text("Local game")
                                .bold()
                                .frame(width: 200, height: 40)
                                .background(
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                    
                                )
                                .foregroundColor(.white)
                            
                        }
                        
                        
                        
                        
                        
                        
                    }
                    .padding()
                    .offset(y: 40)
                    
                    
                    
                    
                } // V
                
            }
            
        }
        .ignoresSafeArea()
        
    }
        
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
