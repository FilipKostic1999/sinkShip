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
    
    
    var body: some View {
        
        if (userIsLoggedIn && !backToLogIn) {
            userIsLoggedView
        } else if (userIsLoggedIn && backToLogIn){
            loginView
        } else if (!userIsLoggedIn && !backToLogIn) {
            loginView
        }
       
 
            
            
        } // body
    
    
    
    
    var userIsLoggedView: some View {
        
        ZStack {
            
            Image("ocean")
            .resizable() // allows to change picture
           // .padding(.horizontal)
            .ignoresSafeArea()
            .scaledToFit()   // makes sure to resize only what you change in frame
            .frame(width: 600, height: 1000)
            .position(x: 196, y: 420)
            
            VStack {
                
                Text("You are logged")
                
                Button {
                   
                    
                    
                } label: {
                    Text("Log out")
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
                    
                    
                    
                    Text("Sign up")
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
                            Text("Sign Up")
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
                            
                            login()
                           
                          
                            
                            
                            
                        } label: {
                            
                            Text("Already have an account? Log in here")
                                .bold()
                                .foregroundColor(.white)
                            
                        }
                        .padding(.top)
                        .offset(y: 50)
                        
                        
                       
                        
                        
                    }.frame(width: 350)
                        .onAppear {
                            Auth.auth().addStateDidChangeListener { auth, user in
                                if user != nil {
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
                isShowingDetailView = true
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
