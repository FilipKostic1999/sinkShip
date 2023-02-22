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
    
    
    @State private var showStats = 1
    @State private var whichStats = "Show global"
    
    
    
    
    var body: some View {
        
       
            
            
            if (showStats == 1) {
                localStatistics
            } else if (showStats == 2) {
                globalStatistic
            }
            
            
            
            
            VStack {
                
                Button {
                    
                    dataManager.fetchDogs()
                    
                    
                    
                    if (showStats == 1) {
                        showStats = 2
                        whichStats = "Show your stats"
                    } else if (showStats == 2) {
                        showStats = 1
                        whichStats = "Show global"
                    }
                    
                } label: {
                    Text("\(whichStats)")
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
                
                   
            }
            
        
            
                
    }
            
        
    
    
    
    
    var globalStatistic: some View {
        
        VStack {
            
            List(dataManager.publicDogs, id: \.name) { publicDog in
                Text("\(publicDog.name): Wins: \(publicDog.victories), Losses: \(publicDog.losses), VictoryRate \(publicDog.victoryRate)")
                
            }
        }
        .navigationTitle("Global")
            
        
    }
    
    
    var localStatistics: some View {
        
        VStack {
            
            List(dataManager.dogs, id: \.name) { dog in
                Text("\(dog.name): Wins: \(dog.victories), Losses: \(dog.losses), VictoryRate \(dog.victoryRate)")
                
            }
            
        }
        .navigationTitle("Your statistic")
        
    }
    
    
    
    
    
    
    
    
    
    
    
}



struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
            .environmentObject(DataManager())
        }
    }
