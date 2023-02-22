//
//  menu.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-29.
//

import SwiftUI

struct menu: View {
    
    
    @EnvironmentObject var dataManager: DataManager
    
    
    
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
                            .bold()
                            .frame(width: 200, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                
                            )
                            .foregroundColor(.white)
        
                    }
                    
                    
                    
                    VStack {
                        
                        NavigationLink(destination:playComputer().navigationBarBackButtonHidden(true)) {
                            Text("Play against computer")
                                .bold()
                                .frame(width: 200, height: 40)
                                .background(
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                    
                                )
                                .foregroundColor(.white)
                                
                           
                            
                        }
                        
                        
                        
                        VStack {
                            
                            NavigationLink(destination:Stats().navigationBarBackButtonHidden(true)) {
                                Text("Show Stats")
                                    .bold()
                                    .frame(width: 200, height: 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                        
                                    )
                                    .foregroundColor(.white)
                                    
                               
                                
                            }
                            
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                  
                    
                    
                    
                    
                    
                } // Vstack
                      
                .padding()
                .position(x: 200, y: 550)
                .navigationTitle("Menu")
                
                
                
                
                
                 
               
            } // Zstack
            
            
            
            
           
                    
            } // nav
        
        
        
    }
}













struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
