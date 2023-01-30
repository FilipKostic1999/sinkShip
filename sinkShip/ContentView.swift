//
//  ContentView.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-28.
//

import SwiftUI

// @State private var showPopup = false


struct ContentView : View {
    
    var body: some View {
        
        
        
        NavigationView {
        
                    
                    
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                
                        
            Image("shipBackground")
            .resizable() // allows to change picture
           // .padding(.horizontal)
            .scaledToFit()   // makes sure to resize only what you change in frame
          //  .frame(height: 600)
            .position(x: 196, y: 110)
                            
            
                            
                            
                VStack {
                    
                    
                    NavigationLink(destination:menu().navigationBarBackButtonHidden(true)) {
                        Text("Local game")
                            .padding() // makes background color thick
                            .background(.blue)
                            .foregroundColor(.black)
                            .font(Font.custom("font1", size: 28))
                            .position(x: 185, y: 600)
                        
                       
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                } // Vstack
                      
                .padding()
                       
                .navigationTitle("Log in")
                
                
                
                VStack {
                    
                    NavigationLink(destination:menu().navigationBarBackButtonHidden(true)) {
                        Text("Log in")
                            .padding() // makes background color thick
                            .background(.blue)
                            .foregroundColor(.black)
                            .font(Font.custom("font1", size: 28))
                            .position(x: 200, y: 500)
                        
                       
                        
                    }
                    
                    
                    
                }
                
                 
               
            } // Zstack
            
            
            
            
           
                    
            } // nav
        
        
        
        
    }
    
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
