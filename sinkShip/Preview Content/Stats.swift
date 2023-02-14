//
//  Stats.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-14.
//

import SwiftUI
import Firebase

struct Stats: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    
    @State private var winningRate = 0
    
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            List(dataManager.dogs, id: \.id) { dog in
                Text("\(dog.name):, Wins: \(dog.victories), Losses: \(dog.losses)")
                
                
                
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup) {
                NewDogView()
            }
        }
    }
}



struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
            .environmentObject(DataManager())
        }
    }
