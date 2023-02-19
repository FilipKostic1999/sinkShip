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
                
                
                TextField("", text: $name)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: name.isEmpty) {
                        Text("Write your name")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                
                
                VStack {
                    
                    Text("You are logged")
                    
                    Button {
                        
                        
                        
                        
                    } label: {
                        Text("Log out")
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
