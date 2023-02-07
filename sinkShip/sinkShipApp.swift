//
//  sinkShipApp.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-28.
//

import SwiftUI
import Firebase



@main
struct sinkShipApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
        
    }

    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
        }
    }
}
