//
//  globalStats.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-22.
//

import SwiftUI
import Firebase

struct globalStats: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    
    var body: some View {
        VStack {
            
            
            List(dataManager.publicDogs, id: \.id) { dog in
                Text("\(dog.name): Wins: \(dog.victories), Losses: \(dog.losses), VictoryRate \(dog.victoryRate)")
                
            }
        }
    }
}

struct globalStats_Previews: PreviewProvider {
    static var previews: some View {
        globalStats()
    }
}
