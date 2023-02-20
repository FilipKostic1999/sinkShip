//
//  ContentView.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-28.
//

import SwiftUI
import Firebase




struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    @State private var backToLogIn = false
    @State private var isShowingDetailView = false
    @State private var isCreateAccountPressed = false
    
    @State private var name = ""
    @State private var nameDoc = ""
    @EnvironmentObject var dataManager: DataManager
    
    
    var body: some View {
        
        if (userIsLoggedIn && !backToLogIn) {
            userIsLoggedView
        } else if (userIsLoggedIn && backToLogIn){
            if (isCreateAccountPressed) {
                createAccountView
            } else if (!isCreateAccountPressed) {
                loginView
            }
        } else if (!userIsLoggedIn && !backToLogIn) {
            loginView
        }
       
 
        
            
            
        } // body
    
    
    
    
    var createAccountView: some View {
        
      NavigationView  {
            
            
            ZStack {
                
                
                Image("ocean")
                .resizable() // allows to change picture
               // .padding(.horizontal)
                .ignoresSafeArea()
                .scaledToFit()   // makes sure to resize only what you change in frame
                .frame(width: 600, height: 1000)
                .position(x: 196, y: 420)
                
              
                
                VStack {
                    
                    /*
                    NavigationView {
                        VStack {
                            NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { Menu() }

                            
                        }
                        
                    }
                    
                    
                    */
                    
                    
                    
                    Text("Create account")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                    
                    
                    
                    
                    Image("shipBackground")
                        .resizable() // allows to change picture
                    // .padding(.horizontal)
                        .scaledToFit()   // makes sure to resize only what you change in frame
                    //  .frame(height: 600)
                    
                    
                    
                    VStack(spacing: 20) {
                        
                        
                        
                        TextField("Email", text: $email)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: email.isEmpty) {
                                Text("Email")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(.white)
                        
                        SecureField("Password", text: $password)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: password.isEmpty) {
                                Text("Password")
                                    .foregroundColor(.white)
                                    .bold()
                                
                            }
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(.white)
                        
                        Button {
                            
                        register()
                            
                        } label: {
                            Text("Register")
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
                        
                        
                        
                        
                     
                        
                        Button {
                            
                        
                           isCreateAccountPressed = false
                          
                            
                            
                            
                        } label: {
                            
                            Text("Back to login")
                                .bold()
                                .frame(width: 200, height: 40)
                                .background(
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                    
                                )
                                .foregroundColor(.white)
                            
                            
                        }
                        .padding(.top)
                        .offset(y: 50)
                        
                        
                       
                        
                        
                    }.frame(width: 350)
                    
                    /*
                    
                        .onAppear {
                            Auth.auth().addStateDidChangeListener { auth, user in
                                if user != nil {
                                    userIsLoggedIn = true
                                    
                                }
                                
                            }
                        }
                    
                    */
                    
                } // V
                
            }.ignoresSafeArea() // ZStack
            
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    var userIsLoggedView: some View {
        
        NavigationView {
        
        ZStack {
            
            
            
            
            
            Image("ocean")
                .resizable() // allows to change picture
            // .padding(.horizontal)
                .ignoresSafeArea()
                .scaledToFit()   // makes sure to resize only what you change in frame
                .frame(width: 600, height: 1000)
                .position(x: 196, y: 420)
            
            
            
            
            VStack {
                
                Text("Profile")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                
                
                
             
           
                    
                    
                    HStack {
                        
                        
                        
                        
                        Image("anonimou")
                            .resizable() // allows to change picture
                        // .padding(.horizontal)
                            .ignoresSafeArea()
                            .scaledToFit()   // makes sure to resize only what you change in frame
                            .frame(width: 160, height: 200)
                        //  .position(x: 196, y: 420)
                        
                        
                        
                        
                        
                        TextField("", text: $name)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: name.isEmpty) {
                                Text("Write your name")
                                    .foregroundColor(.black)
                                
                                    .bold()
                                    .frame(width: 200, height: 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.linearGradient(colors: [.white, .white], startPoint: .top, endPoint: .bottomTrailing))
                                        
                                    )
                            }
                        
                    }
                
                
                
                
                Text("You are logged \(nameDoc)")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
                
                
                
                
                
                Button {
                    
                  createName()
                    
                    
                } label: {
                    Text("Change name")
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
                
                
                
               
                    
                    
                Button {
                    
                   
                    
                    var victories = 0
                    var losses = 0
                    var victoryRate = 0.0
                   
                    
                    
                    for dog in dataManager.dogs {
                        nameDoc = dog.name
                        victories = victories + dog.victories
                        losses = losses + dog.losses
                        
                        print("\(dog.victories)")
                    }
                    
                    
                    
                    
                } label: {
                    Text("Refresh profile")
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
                
                
                
                    
                
                
                VStack {
                    
                    
                    
                    Button {
                        
                        backToLogIn = true
                        
                        
                    } label: {
                        Text("Back to login")
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
                    
                    
                    
                    VStack {
                        
                        
                        NavigationLink(destination:menu()) {
                            Text("Local game")
                                .bold()
                                .frame(width: 200, height: 40)
                                .background(
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                    
                                )
                                .foregroundColor(.white)
                            
                        }
                        
                        
                        
                        
                        
                        
                    }
                    .padding()
                    .offset(y: 40)
                    
                    
                    
                    
                } // V
                
            }
            
        }
        .ignoresSafeArea()
        
    }
        
        
}
    
    
    
    
        
        
    var loginView: some View {
        
        NavigationView {
            
            
            ZStack {
                
                
                Image("ocean")
                .resizable() // allows to change picture
               // .padding(.horizontal)
                .ignoresSafeArea()
                .scaledToFit()   // makes sure to resize only what you change in frame
                .frame(width: 600, height: 1000)
                .position(x: 196, y: 420)
                
              
                
                VStack {
                    
                    /*
                    NavigationView {
                        VStack {
                            NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { Menu() }

                            
                        }
                        
                    }
                    
                    
                    */
                    
                    
                    
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                    
                    
                    
                    
                    Image("shipBackground")
                        .resizable() // allows to change picture
                    // .padding(.horizontal)
                        .scaledToFit()   // makes sure to resize only what you change in frame
                    //  .frame(height: 600)
                    
                    
                    
                    VStack(spacing: 20) {
                        
                        
                        
                        TextField("Email", text: $email)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: email.isEmpty) {
                                Text("Email")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(.white)
                        
                        SecureField("Password", text: $password)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: password.isEmpty) {
                                Text("Password")
                                    .foregroundColor(.white)
                                    .bold()
                                
                            }
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(.white)
                        
                        Button {
                     
                            
                            login()
                            
                        } label: {
                            Text("Login")
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
                        
                        
                        
                        VStack {
                            
                            
                            NavigationLink(destination:menu()) {
                                Text("Local game")
                                    .bold()
                                    .frame(width: 200, height: 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.linearGradient(colors: [.blue, .blue], startPoint: .top, endPoint: .bottomTrailing))
                                        
                                    )
                                    .foregroundColor(.white)
          
                            }
                            
 
                        }.offset(y: 40)
                        
                     
                        
                        Button {
                            
                        
                           isCreateAccountPressed = true
                          
                            
                            
                            
                        } label: {
                            
                            Text("Not registered yet? Create an account here")
                                .bold()
                                .foregroundColor(.white)
                            
                            
                        }
                        .padding(.top)
                        .offset(y: 50)
                        
                        
                       
                        
                        
                    }.frame(width: 350)
                        .onAppear {
                            Auth.auth().addStateDidChangeListener { auth, user in
                                if user != nil {
                                 
                                    dataManager.fetchDogs()
                                    
                                    
                                    
                                        userIsLoggedIn = true
                                    
                                }
                                
                            }
                        }
                    
                    
                    
                } // V
                
            }.ignoresSafeArea() // ZStack
            
            
        } // nav
        
        
        
        
    }
    
    
 
    
    
    func login() {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            } else {
                userIsLoggedIn = true
                backToLogIn = false
            }
            
           
                

                
                    
                }
 
    }
    
    
   
    
    func register() {
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            
        }
        
    
        
        
        
        
    }
    
    
    
    
    
    func createName() {
        
        
        
        
        var oldName = "danilo"
        var nameDoc = name
        var victories = 0
        var losses = 0
        var victoryRate = 0.0
       
        
        for dog in dataManager.dogs {
            oldName = dog.name
            nameDoc = name
            victories = victories + dog.victories
            losses = losses + dog.losses
            
            
            
            print("\(dog.victories)")
        }
        
        
        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
        
        print(victories)
        
        dataManager.addDog(name: nameDoc, victories: victories,
                           losses: losses, position: 0, victoryRate: victoryRate)
        
        
        dataManager.deleteDoc(name: oldName)
        
        
        
       
        backToLogIn = true
        
        
    }
    
    
    
    
    
    
    
    
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading, @ViewBuilder placeholder: () -> Content) -> some View {
            ZStack(alignment: alignment) { placeholder().opacity(shouldShow ? 1 : 0)
                self }
            
        }
    
}
