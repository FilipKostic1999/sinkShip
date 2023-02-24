//
//  DataManager.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-07.
//

import SwiftUI

import Firebase

class DataManager: ObservableObject {
    
    @Published var dogs: [Dog] = []
    @Published var publicDogs: [Dog] = []
   
    
    init() {
       
       // fetchDogs()
        
    }
    
    func fetchDogs() {
        
        dogs.removeAll()
        publicDogs.removeAll()
        
        let CurrentUid = Auth.auth().currentUser?.uid
        
        let db = Firestore.firestore()
        var ref = db.collection(CurrentUid!)
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let victories = data["victories"] as? Int ?? 0
                    let losses = data["losses"] as? Int ?? 0
                    let position = data["position"] as? Int ?? 0
                    let victoryRate = data["victoryRate"] as? Double ?? 0
                    
                    let dog = Dog(id: id, name: name, victories: victories, losses: losses,
                    position: position, victoryRate: victoryRate)
                    self.dogs.append(dog)
                }
            }
            
        }
        
        
        
  
        ref = db.collection("Global Collection")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let victories = data["victories"] as? Int ?? 0
                    let losses = data["losses"] as? Int ?? 0
                    let position = data["position"] as? Int ?? 0
                    let victoryRate = data["victoryRate"] as? Double ?? 0
                    
                    let publicDog = Dog(id: id, name: name, victories: victories, losses: losses,
                    position: position, victoryRate: victoryRate)
                    self.publicDogs.append(publicDog)
                }
            }
            
        }
        
        
        
        
        
        
        
        
        
        
       
       
    }
    
    
    func addDog(name: String, victories: Int, losses: Int, position: Int, victoryRate: Double) {
        
        let CurrentUid = Auth.auth().currentUser?.uid //
        
        let db = Firestore.firestore()
        var ref = db.collection(CurrentUid!).document(name)
        ref.setData(["id": 10, "name": name, "victories": victories,
                     "losses": losses, "position": position, "victoryRate": victoryRate]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
        
        
        
        
        // Upload to global stats
     
        

        ref = db.collection("Global Collection").document(name)
        ref.setData(["id": 18, "name": name, "victories": victories,
                     "losses": losses, "position": position, "victoryRate": victoryRate]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
        
        
        
        
        
        
    }
    
    
    
    func deleteDoc(name: String) {
        
        let CurrentUid = Auth.auth().currentUser?.uid //
        
        let db = Firestore.firestore()
        var ref = db.collection(CurrentUid!).document(name)
        ref.delete() { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
        
        
        
        
        
     
        
        ref = db.collection("Global Collection").document(name)
        ref.delete() { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
        
        
        
        
    }
    
    
    
    
    
}
