//
//  menu.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-29.
//

import SwiftUI

struct menu: View {
    var body: some View {
        
        NavigationView {
        
                    
                    
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                
                        
            Image("menubackground")
            .resizable() // allows to change picture
           // .padding(.horizontal)
            .ignoresSafeArea()
            .scaledToFit()   // makes sure to resize only what you change in frame
            .frame(height: 800)
            .position(x: 196, y: 300)
                            
            
                            
                            
                VStack {
                    
                    
                    NavigationLink(destination:Stats().navigationBarBackButtonHidden(true)) {
                        Text("Multyplayer")
                            .padding() // makes background color thick
                            .background(.blue)
                            .foregroundColor(.black)
                            .font(Font.custom("font1", size: 28))
                            .position(x: 185, y: 600)
                        
                       
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                } // Vstack
                      
                .padding()
                       
                .navigationTitle("Menu")
                
                
                
                VStack {
                    
                    NavigationLink(destination:Stats()) {
                        Text("Play against computer")
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













struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
