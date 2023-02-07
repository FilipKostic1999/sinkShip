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
    
    init() {
        fetchDogs()
    }
    
    func fetchDogs() {
        
        dogs.removeAll()
        
        let CurrentUid = Auth.auth().currentUser?.uid //
        
        let db = Firestore.firestore()
        let ref = db.collection(CurrentUid!)
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let breed = data["breed"] as? String ?? ""
                    
                    let dog = Dog(id: id, breed: breed)
                    self.dogs.append(dog)
                }
            }
            
        }
        
        
        
    }
    
    
    func addDog(dogBreed: String) {
        
        let CurrentUid = Auth.auth().currentUser?.uid //
        
        let db = Firestore.firestore()
        let ref = db.collection(CurrentUid!).document(dogBreed)
        ref.setData(["breed": dogBreed, "id": 10]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
        
    }
    
    
}
