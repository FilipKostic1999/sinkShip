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
    
    init() {
        FirebaseApp.configure()
        
    }

    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
