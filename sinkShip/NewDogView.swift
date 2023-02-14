//
//  NewDogView.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-07.
//

import SwiftUI

struct NewDogView: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    
    
    var body: some View {
        
        VStack {
            
            TextField("Dog", text: $newDog)
            
            Button {
                
             //   dataManager.addDog(name: newDog)
                
                
            } label: {
                
                Text("Save")
                
                
            }
            
        }.padding()
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
