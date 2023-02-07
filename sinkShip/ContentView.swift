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
    
    
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                Color.black
                
                VStack {
                    
   
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
                            
                            
                            NavigationLink(destination:NewDogView().navigationBarBackButtonHidden(true)) {
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
                                    userIsLoggedIn.toggle()
                                }
                                
                            }
                        }
                } // V
                
            }.ignoresSafeArea() // ZStack
            
            
        } // nav
            
            
        } // body
        
        
        
    
    
 
    
    
    func login() {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
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















// @State private var showPopup = false

/*
struct ContentView : View {
    
    var body: some View {
        
        
        
        NavigationView {
        
                    
                    
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                
                        
            Image("shipBackground")
            .resizable() // allows to change picture
           // .padding(.horizontal)
            .scaledToFit()   // makes sure to resize only what you change in frame
          //  .frame(height: 600)
            .position(x: 196, y: 110)
                            
            
                            
                            
                VStack {
                    
                    
                    NavigationLink(destination:menu().navigationBarBackButtonHidden(true)) {
                        Text("Local game")
                            .padding() // makes background color thick
                            .background(.blue)
                            .foregroundColor(.black)
                            .font(Font.custom("font1", size: 28))
                            .position(x: 185, y: 600)
                        
                       
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                } // Vstack
                      
                .padding()
                       
                .navigationTitle("Log in")
                
                
                
                VStack {
                    
                    NavigationLink(destination:menu().navigationBarBackButtonHidden(true)) {
                        Text("Log in")
                            .padding() // makes background color thick
                            .background(.blue)
                            .foregroundColor(.black)
                            .font(Font.custom("font1", size: 28))
                            .position(x: 200, y: 500)
                        
                       
                        
                    }
                    
                    
                    
                }
                
                 
               
            } // Zstack
            
            
            
            
           
                    
            } // nav
        
        
        
        
    }
    
}







*/








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
