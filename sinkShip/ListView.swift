//
//  ListView.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-07.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    
    var body: some View {
        
        NavigationView {
            
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                // add
            }, label: {
                Image(systemName: "plus")
            }))
        }
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
