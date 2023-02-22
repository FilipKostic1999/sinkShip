//
//  playComputer.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-30.
//

import SwiftUI
import Firebase

struct playComputer: View {
    
   
    @State private var labelText = "x"
    
    // Who plays?
    
    @State private var player1Turn = true
    

    
    // Are the squares active?
    
    @State private var P1C1S1Active = true
    @State private var P1C1S2Active = true
    @State private var P1C1S3Active = true
    @State private var P1C1S4Active = true
    @State private var P1C1S5Active = true
    
    @State private var P1C2S1Active = true
    @State private var P1C2S2Active = true
    @State private var P1C2S3Active = true
    @State private var P1C2S4Active = true
    @State private var P1C2S5Active = true
    
    @State private var P1C3S1Active = true
    @State private var P1C3S2Active = true
    @State private var P1C3S3Active = true
    @State private var P1C3S4Active = true
    @State private var P1C3S5Active = true
    
    
    
    @State private var P2C1S1Active = true
    @State private var P2C1S2Active = true
    @State private var P2C1S3Active = true
    @State private var P2C1S4Active = true
    @State private var P2C1S5Active = true
    
    @State private var P2C2S1Active = true
    @State private var P2C2S2Active = true
    @State private var P2C2S3Active = true
    @State private var P2C2S4Active = true
    @State private var P2C2S5Active = true
    
    @State private var P2C3S1Active = true
    @State private var P2C3S2Active = true
    @State private var P2C3S3Active = true
    @State private var P2C3S4Active = true
    @State private var P2C3S5Active = true
    
    
    // Asign random ship positions to player and computer
    
    @State private var shipPresence1 = Int(arc4random_uniform(5) + 1)
    @State private var shipPresence2 = Int(arc4random_uniform(5) + 1)
    @State private var shipPresence3 = Int(arc4random_uniform(5) + 1)
    
    @State private var shipPresence4 = Int(arc4random_uniform(5) + 1)
    @State private var shipPresence5 = Int(arc4random_uniform(5) + 1)
    @State private var shipPresence6 = Int(arc4random_uniform(5) + 1)
    
    
    
    
    // Ship counter
   
    @State private var areThere3ShipsPlayer = 0
    @State private var areThere3ShipsCPU = 0
    
    
    // Is there a ship
    
    @State private var P1C1S1Ship = false
    @State private var P1C1S2Ship = false
    @State private var P1C1S3Ship = false
    @State private var P1C1S4Ship = false
    @State private var P1C1S5Ship = false
    
    @State private var P1C2S1Ship = false
    @State private var P1C2S2Ship = false
    @State private var P1C2S3Ship = false
    @State private var P1C2S4Ship = false
    @State private var P1C2S5Ship = false
    
    @State private var P1C3S1Ship = false
    @State private var P1C3S2Ship = false
    @State private var P1C3S3Ship = false
    @State private var P1C3S4Ship = false
    @State private var P1C3S5Ship = false
    
    
    
    @State private var P2C1S1Ship = false
    @State private var P2C1S2Ship = false
    @State private var P2C1S3Ship = false
    @State private var P2C1S4Ship = false
    @State private var P2C1S5Ship = false
    
    @State private var P2C2S1Ship = false
    @State private var P2C2S2Ship = false
    @State private var P2C2S3Ship = false
    @State private var P2C2S4Ship = false
    @State private var P2C2S5Ship = false
    
    @State private var P2C3S1Ship = false
    @State private var P2C3S2Ship = false
    @State private var P2C3S3Ship = false
    @State private var P2C3S4Ship = false
    @State private var P2C3S5Ship = false
    
    
    
    

    
    // color state for buttons
    
    @State private var buttonBackColor1 : Color = .white
    @State private var buttonBackColor2 : Color = .white
    @State private var buttonBackColor3 : Color = .white
    @State private var buttonBackColor4 : Color = .white
    @State private var buttonBackColor5 : Color = .white
    @State private var buttonBackColor6 : Color = .white
    @State private var buttonBackColor7 : Color = .white
    @State private var buttonBackColor8 : Color = .white
    @State private var buttonBackColor9 : Color = .white
    @State private var buttonBackColor10 : Color = .white
    @State private var buttonBackColor11 : Color = .white
    @State private var buttonBackColor12 : Color = .white
    @State private var buttonBackColor13 : Color = .white
    @State private var buttonBackColor14 : Color = .white
    @State private var buttonBackColor15 : Color = .white
    
    // player 2 states
    
    @State private var buttonBackColor16 : Color = .white
    @State private var buttonBackColor17 : Color = .white
    @State private var buttonBackColor18 : Color = .white
    @State private var buttonBackColor19 : Color = .white
    @State private var buttonBackColor20 : Color = .white
    @State private var buttonBackColor21 : Color = .white
    @State private var buttonBackColor22 : Color = .white
    @State private var buttonBackColor23 : Color = .white
    @State private var buttonBackColor24 : Color = .white
    @State private var buttonBackColor25 : Color = .white
    @State private var buttonBackColor26 : Color = .white
    @State private var buttonBackColor27 : Color = .white
    @State private var buttonBackColor28 : Color = .white
    @State private var buttonBackColor29 : Color = .white
    @State private var buttonBackColor30 : Color = .white
    
    
    @State private var destroiedShipsPlayer = 0
    @State private var destroiedShipsComputer = 0
    
    
    
    @State private var loopStop = false
    @State private var winner = ""
    
   
    @State private var fetchPermission = true
    
    
    
    @EnvironmentObject var dataManager: DataManager
    @State private var nameDoc = "nameless user"
    
    
    
   
    
    
    var body: some View {
        
       
        
        ZStack {
            
            Image("ocean")
            .resizable() // allows to change picture
           // .padding(.horizontal)
            .ignoresSafeArea()
            .scaledToFit()   // makes sure to resize only what you change in frame
            .frame(width: 600, height: 1000)
            .position(x: 196, y: 380)
            
            VStack {
                
                
                
                Spacer()
                
                
                HStack {
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        if (P1C1S1Active == true && player1Turn == true) {
                            
                            
                            if (shipPresence1 == 1) {
                                buttonBackColor1 = .red
                            } else {
                                buttonBackColor1 = .blue
                            }
                            
                            if (self.buttonBackColor1 == .white) {
                                self.buttonBackColor1 = .white
                            } else if self.buttonBackColor1 == .blue {
                                self.buttonBackColor1 = .blue
                            } else if self.buttonBackColor1 == .red {
                                self.buttonBackColor1 = .red
                            }
                            
                            P1C1S1Active = false
                            player1Turn = false
                             
                        }
                         
                         */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor1)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        if (P1C1S2Active == true && player1Turn == true) {
                            
                            if (shipPresence1 == 2) {
                                buttonBackColor2 = .red
                            } else {
                                buttonBackColor2 = .blue
                            }
                            
                            if (self.buttonBackColor2 == .white) {
                                self.buttonBackColor2 = .white
                            } else if self.buttonBackColor2 == .blue {
                                self.buttonBackColor2 = .blue
                            } else if self.buttonBackColor2 == .red {
                                self.buttonBackColor2 = .red
                            }
                            
                            P1C1S2Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor2)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        if (P1C1S3Active == true && player1Turn == true) {
                            
                            if (shipPresence1 == 3) {
                                buttonBackColor3 = .red
                            } else {
                                buttonBackColor3 = .blue
                            }
                            
                            if (self.buttonBackColor3 == .white) {
                                self.buttonBackColor3 = .white
                            } else if self.buttonBackColor3 == .blue {
                                self.buttonBackColor3 = .blue
                            } else if self.buttonBackColor3 == .red {
                                self.buttonBackColor3 = .red
                            }
                            
                            P1C1S3Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor3)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        /*
                        if (P1C1S4Active == true && player1Turn == true) {
                            
                            if (shipPresence1 == 4) {
                                buttonBackColor4 = .red
                            } else {
                                buttonBackColor4 = .blue
                            }
                            
                            if (self.buttonBackColor4 == .white) {
                                self.buttonBackColor4 = .white
                            } else if self.buttonBackColor4 == .blue {
                                self.buttonBackColor4 = .blue
                            } else if self.buttonBackColor4 == .red {
                                self.buttonBackColor4 = .red
                            }
                            
                            P1C1S4Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor4)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C1S5Active == true && player1Turn == true) {
                            
                            if (shipPresence1 == 5) {
                                buttonBackColor5 = .red
                            } else {
                                buttonBackColor5 = .blue
                            }
                            
                            if (self.buttonBackColor5 == .white) {
                                self.buttonBackColor5 = .white
                            } else if self.buttonBackColor5 == .blue {
                                self.buttonBackColor5 = .blue
                            } else if self.buttonBackColor5 == .red {
                                self.buttonBackColor5 = .red
                            }
                            
                            P1C1S5Active = false
                           // player1Turn = false
                        }
                        
                        
                        */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor5)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    
                }
                
                
                HStack {
                    Button(action: {
                        labelText = "x"
                        
                        
                        /*
                        if (P1C2S1Active == true && player1Turn == true) {
                            
                            if (shipPresence2 == 1) {
                                buttonBackColor6 = .red
                            } else {
                                buttonBackColor6 = .blue
                            }
                            
                            if (self.buttonBackColor6 == .white) {
                                self.buttonBackColor6 = .white
                            } else if self.buttonBackColor6 == .blue {
                                self.buttonBackColor6 = .blue
                            } else if self.buttonBackColor6 == .red {
                                self.buttonBackColor6 = .red
                            }
                            
                            P1C2S1Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor6)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C2S2Active == true && player1Turn == true) {
                            
                            if (shipPresence2 == 2) {
                                buttonBackColor7 = .red
                            } else {
                                buttonBackColor7 = .blue
                            }
                            
                            if (self.buttonBackColor7 == .white) {
                                self.buttonBackColor7 = .white
                            } else if self.buttonBackColor7 == .blue {
                                self.buttonBackColor7 = .blue
                            } else if self.buttonBackColor7 == .red {
                                self.buttonBackColor7 = .red
                            }
                            
                            P1C2S2Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor7)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C2S3Active == true && player1Turn == true) {
                            
                            if (shipPresence2 == 3) {
                                buttonBackColor8 = .red
                            } else {
                                buttonBackColor8 = .blue
                            }
                            
                            if (self.buttonBackColor8 == .white) {
                                self.buttonBackColor8 = .white
                            } else if self.buttonBackColor8 == .blue {
                                self.buttonBackColor8 = .blue
                            } else if self.buttonBackColor8 == .red {
                                self.buttonBackColor8 = .red
                            }
                            
                            P1C2S3Active = false
                          //  player1Turn = false
                        }
                        
                        */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor8)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C2S4Active == true && player1Turn == true) {
                            
                            if (shipPresence2 == 4) {
                                buttonBackColor9 = .red
                            } else {
                                buttonBackColor9 = .blue
                            }
                            
                            if (self.buttonBackColor9 == .white) {
                                self.buttonBackColor9 = .white
                            } else if self.buttonBackColor9 == .blue {
                                self.buttonBackColor9 = .blue
                            } else if self.buttonBackColor9 == .red {
                                self.buttonBackColor9 = .red
                            }
                            
                            P1C2S4Active = false
                            //player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor9)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C2S5Active == true && player1Turn == true) {
                            
                            if (shipPresence2 == 5) {
                                buttonBackColor10 = .red
                            } else {
                                buttonBackColor10 = .blue
                            }
                            
                            if (self.buttonBackColor10 == .white) {
                                self.buttonBackColor10 = .white
                            } else if self.buttonBackColor10 == .blue {
                                self.buttonBackColor10 = .blue
                            } else if self.buttonBackColor10 == .red {
                                self.buttonBackColor10 = .red
                            }
                            
                            P1C2S5Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor10)
                            .foregroundColor(.black)
                    })
                }
                
                
                HStack {
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C3S1Active == true && player1Turn == true) {
                            
                            if (shipPresence3 == 1) {
                                buttonBackColor11 = .red
                            } else {
                                buttonBackColor11 = .blue
                            }
                            
                            if (self.buttonBackColor11 == .white) {
                                self.buttonBackColor11 = .white
                            } else if self.buttonBackColor11 == .blue {
                                self.buttonBackColor11 = .blue
                            } else if self.buttonBackColor11 == .red {
                                self.buttonBackColor11 = .red
                            }
                            
                            P1C3S1Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor11)
                            .foregroundColor(.black)
                        
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C3S2Active == true && player1Turn == true) {
                            
                            if (shipPresence3 == 2) {
                                buttonBackColor12 = .red
                            } else {
                                buttonBackColor12 = .blue
                            }
                            
                            if (self.buttonBackColor12 == .white) {
                                self.buttonBackColor12 = .white
                            } else if self.buttonBackColor12 == .blue {
                                self.buttonBackColor12 = .blue
                            } else if self.buttonBackColor12 == .red {
                                self.buttonBackColor12 = .red
                            }
                            
                            P1C3S2Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor12)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        if (P1C3S3Active == true && player1Turn == true) {
                            
                            if (shipPresence3 == 3) {
                                buttonBackColor13 = .red
                            } else {
                                buttonBackColor13 = .blue
                            }
                            
                            if (self.buttonBackColor13 == .white) {
                                self.buttonBackColor13 = .white
                            } else if self.buttonBackColor13 == .blue {
                                self.buttonBackColor13 = .blue
                            } else if self.buttonBackColor13 == .red {
                                self.buttonBackColor13 = .red
                            }
                            
                            P1C3S3Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor13)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        if (P1C3S4Active == true && player1Turn == true) {
                            
                            if (shipPresence3 == 4) {
                                buttonBackColor14 = .red
                            } else {
                                buttonBackColor14 = .blue
                            }
                            
                            if (self.buttonBackColor14 == .white) {
                                self.buttonBackColor14 = .white
                            } else if self.buttonBackColor14 == .blue {
                                self.buttonBackColor14 = .blue
                            } else if self.buttonBackColor14 == .red {
                                self.buttonBackColor14 = .red
                            }
                            
                            P1C3S4Active = false
                           // player1Turn = false
                        }
                        
                        
                        */
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor14)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        /*
                        
                        if (P1C3S5Active == true && player1Turn == true) {
                            
                            if (shipPresence3 == 5) {
                                buttonBackColor15 = .red
                            } else {
                                buttonBackColor15 = .blue
                            }
                            
                            if (self.buttonBackColor15 == .white) {
                                self.buttonBackColor15 = .white
                            } else if self.buttonBackColor15 == .blue {
                                self.buttonBackColor15 = .blue
                            } else if self.buttonBackColor15 == .red {
                                self.buttonBackColor15 = .red
                            }
                            
                            P1C3S5Active = false
                           // player1Turn = false
                        }
                        
                        */
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor15)
                            .foregroundColor(.black)
                    })
                }
                
                
                Spacer()
                
                HStack {
                    
                    Text("\(winner)")
                    
                    
                    
                }
                
              
                
                HStack {
                  
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        
                        if (P2C1S1Active == true && player1Turn == true) {
                            
                            if (shipPresence4 == 1) {
                                buttonBackColor16 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor16 = .blue
                            }
                            
                            if (self.buttonBackColor16 == .white) {
                                self.buttonBackColor16 = .white
                            } else if self.buttonBackColor16 == .blue {
                                self.buttonBackColor16 = .blue
                            } else if self.buttonBackColor16 == .red {
                                self.buttonBackColor16 = .red
                            }
                            
                         
                            attackPlayer()
                            
                            
                            
                            
                            P2C1S1Active = false
                           // player1Turn = false
                        }
                        
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor16)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C1S2Active == true && player1Turn == true) {
                            
                            if (shipPresence4 == 2) {
                                buttonBackColor17 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor17 = .blue
                            }
                            
                            if (self.buttonBackColor17 == .white) {
                                self.buttonBackColor17 = .white
                            } else if self.buttonBackColor17 == .blue {
                                self.buttonBackColor17 = .blue
                            } else if self.buttonBackColor17 == .red {
                                self.buttonBackColor17 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            
                            P2C1S2Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor17)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C1S3Active == true && player1Turn == true) {
                            
                            if (shipPresence4 == 3) {
                                buttonBackColor18 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor18 = .blue
                            }
                            
                            if (self.buttonBackColor18 == .white) {
                                self.buttonBackColor18 = .white
                            } else if self.buttonBackColor18 == .blue {
                                self.buttonBackColor18 = .blue
                            } else if self.buttonBackColor18 == .red {
                                self.buttonBackColor18 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C1S3Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor18)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C1S4Active == true && player1Turn == true) {
                            
                            if (shipPresence4 == 4) {
                                buttonBackColor19 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor19 = .blue
                            }
                            
                            if (self.buttonBackColor19 == .white) {
                                self.buttonBackColor19 = .white
                            } else if self.buttonBackColor19 == .blue {
                                self.buttonBackColor19 = .blue
                            } else if self.buttonBackColor19 == .red {
                                self.buttonBackColor19 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C1S4Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor19)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C1S5Active == true && player1Turn == true) {
                            
                            if (shipPresence4 == 5) {
                                buttonBackColor20 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor20 = .blue
                            }
                            
                            if (self.buttonBackColor20 == .white) {
                                self.buttonBackColor20 = .white
                            } else if self.buttonBackColor20 == .blue {
                                self.buttonBackColor20 = .blue
                            } else if self.buttonBackColor20 == .red {
                                self.buttonBackColor20 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C1S5Active = false
                          //  player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor20)
                            .foregroundColor(.black)
                    })
                }
                
                
                HStack {
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C2S1Active == true && player1Turn == true) {
                            
                            if (shipPresence5 == 1) {
                                buttonBackColor21 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor21 = .blue
                            }
                            
                            if (self.buttonBackColor21 == .white) {
                                self.buttonBackColor21 = .white
                            } else if self.buttonBackColor21 == .blue {
                                self.buttonBackColor21 = .blue
                            } else if self.buttonBackColor21 == .red {
                                self.buttonBackColor21 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C2S1Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor21)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C2S2Active == true && player1Turn == true) {
                            
                            if (shipPresence5 == 2) {
                                buttonBackColor22 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor22 = .blue
                            }
                            
                            if (self.buttonBackColor22 == .white) {
                                self.buttonBackColor22 = .white
                            } else if self.buttonBackColor22 == .blue {
                                self.buttonBackColor22 = .blue
                            } else if self.buttonBackColor22 == .red {
                                self.buttonBackColor22 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C2S2Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor22)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C2S3Active == true && player1Turn == true) {
                            
                            if (shipPresence5 == 3) {
                                buttonBackColor23 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor23 = .blue
                            }
                            
                            if (self.buttonBackColor23 == .white) {
                                self.buttonBackColor23 = .white
                            } else if self.buttonBackColor23 == .blue {
                                self.buttonBackColor23 = .blue
                            } else if self.buttonBackColor23 == .red {
                                self.buttonBackColor23 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C2S3Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor23)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                       
                        
                        if (P2C2S4Active == true && player1Turn == true) {
                            
                            if (shipPresence5 == 4) {
                                buttonBackColor24 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor24 = .blue
                            }
                            
                            if (self.buttonBackColor24 == .white) {
                                self.buttonBackColor24 = .white
                            } else if self.buttonBackColor24 == .blue {
                                self.buttonBackColor24 = .blue
                            } else if self.buttonBackColor24 == .red {
                                self.buttonBackColor24 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C2S4Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor24)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        
                        if (P2C2S5Active == true && player1Turn == true) {
                            
                            if (shipPresence5 == 5) {
                                buttonBackColor25 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor25 = .blue
                            }
                            
                            if (self.buttonBackColor25 == .white) {
                                self.buttonBackColor25 = .white
                            } else if self.buttonBackColor25 == .blue {
                                self.buttonBackColor25 = .blue
                            } else if self.buttonBackColor25 == .red {
                                self.buttonBackColor25 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C2S5Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor25)
                            .foregroundColor(.black)
                    })
                }
                
                
                HStack {
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C3S1Active == true && player1Turn == true) {
                            
                            if (shipPresence6 == 1) {
                                buttonBackColor26 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor26 = .blue
                            }
                            
                            if (self.buttonBackColor26 == .white) {
                                self.buttonBackColor26 = .white
                            } else if self.buttonBackColor26 == .blue {
                                self.buttonBackColor26 = .blue
                            } else if self.buttonBackColor26 == .red {
                                self.buttonBackColor26 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C3S1Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor26)
                            .foregroundColor(.black)
                        
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C3S2Active == true && player1Turn == true) {
                            
                            if (shipPresence6 == 2) {
                                buttonBackColor27 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor27 = .blue
                            }
                            
                            if (self.buttonBackColor27 == .white) {
                                self.buttonBackColor27 = .white
                            } else if self.buttonBackColor27 == .blue {
                                self.buttonBackColor27 = .blue
                            } else if self.buttonBackColor27 == .red {
                                self.buttonBackColor27 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C3S2Active = false
                          //  player1Turn = false
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor27)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C3S3Active == true && player1Turn == true) {
                            
                            if (shipPresence6 == 3) {
                                buttonBackColor28 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor28 = .blue
                            }
                            
                            if (self.buttonBackColor28 == .white) {
                                self.buttonBackColor28 = .white
                            } else if self.buttonBackColor28 == .blue {
                                self.buttonBackColor28 = .blue
                            } else if self.buttonBackColor28 == .red {
                                self.buttonBackColor28 = .red
                            }
                            
                            
                            attackPlayer()
                            
                            P2C3S3Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor28)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        if (P2C3S4Active == true && player1Turn == true) {
                            
                            if (shipPresence6 == 4) {
                                buttonBackColor29 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor29 = .blue
                            }
                            
                            if (self.buttonBackColor29 == .white) {
                                self.buttonBackColor29 = .white
                            } else if self.buttonBackColor29 == .blue {
                                self.buttonBackColor29 = .blue
                            } else if self.buttonBackColor29 == .red {
                                self.buttonBackColor29 = .red
                            }
                            
                            attackPlayer()
                            
                            P2C3S4Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor29)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (fetchPermission) {
                            fetch()
                            fetchPermission = false
                        }
                        
                        
                        if (P2C3S5Active == true && player1Turn == true) {
                            
                            if (shipPresence6 == 5) {
                                buttonBackColor30 = .red
                                destroiedShipsComputer = destroiedShipsComputer + 1
                                if (destroiedShipsComputer >= 3) {
                                    computerGrid()
                                }
                            } else {
                                buttonBackColor30 = .blue
                            }
                            
                            if (self.buttonBackColor30 == .white) {
                                self.buttonBackColor30 = .white
                            } else if self.buttonBackColor30 == .blue {
                                self.buttonBackColor30 = .blue
                            } else if self.buttonBackColor30 == .red {
                                self.buttonBackColor30 = .red
                            }
                            
                            
                            
                            attackPlayer()
                            
                            P2C3S5Active = false
                           // player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor30)
                            .foregroundColor(.black)
                    })
                }
                
                
                
                Spacer()
                
                
                
                
            }.font(Font.custom("font1", size: 42))
            
            
            
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    func computerGrid() {
        
        P2C1S1Active = false
        P2C1S2Active = false
        P2C1S3Active = false
        P2C1S4Active = false
        P2C1S5Active = false
        P2C2S1Active = false
        P2C2S2Active = false
        P2C2S3Active = false
        P2C2S4Active = false
        P2C2S5Active = false
        P2C3S1Active = false
        P2C3S2Active = false
        P2C3S3Active = false
        P2C3S4Active = false
        P2C3S5Active = false
        
        P1C1S1Active = false
        P1C1S2Active = false
        P1C1S3Active = false
        P1C1S4Active = false
        P1C1S5Active = false
        P1C2S1Active = false
        P1C2S2Active = false
        P1C2S3Active = false
        P1C2S4Active = false
        P1C2S5Active = false
        P1C3S1Active = false
        P1C3S2Active = false
        P1C3S3Active = false
        P1C3S4Active = false
        P1C3S5Active = false
        
        loopStop = true
        
        
        winner = "Player wins"
        
        
       
        
      
        
        var victories = 0
        var losses = 0
        var victoryRate = 0.0
       
        
        for dog in dataManager.dogs {
            nameDoc = dog.name
            victories = victories + dog.victories
            losses = losses + dog.losses
            
            print("\(dog.victories)")
        }
        
        victories = victories + 1
        
        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
        
        print(victories)
        
        dataManager.addDog(name: nameDoc, victories: victories,
                           losses: losses, position: 0, victoryRate: victoryRate)
        
        
    }
    
    
    func fetch() {
        
        dataManager.fetchDogs()
        
        
        
        
    }
    
    
    
    
    func attackPlayer() {
        
        while (true) {
            
            
            
            var n = Int(arc4random_uniform(15) + 1)
            
            if (n == 1 && P1C1S1Active == true)  {
                P1C1S1Active = false
                buttonBackColor1 = .blue
                if (n == shipPresence1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor1 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 2 && P1C1S2Active == true) {
                P1C1S2Active = false
                buttonBackColor2 = .blue
                if (n == shipPresence1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor2 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                        
                    }
                }
                break
            } else if (n == 3 && P1C1S3Active == true) {
                P1C1S3Active = false
                buttonBackColor3 = .blue
                if (n == shipPresence1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor3 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 4 && P1C1S4Active == true) {
                P1C1S4Active = false
                buttonBackColor4 = .blue
                if (n == shipPresence1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor4 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 5 && P1C1S5Active == true) {
                P1C1S5Active = false
                buttonBackColor5 = .blue
                if (n == shipPresence1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor5 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 6 && P1C2S1Active == true) {
                P1C2S1Active = false
                buttonBackColor6 = .blue
                if (shipPresence2 == 1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor6 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 7 && P1C2S2Active == true) {
                P1C2S2Active = false
                buttonBackColor7 = .blue
                if (shipPresence2 == 2) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor7 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 8 && P1C2S3Active == true) {
                P1C2S3Active = false
                buttonBackColor8 = .blue
                if (shipPresence2 == 3) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor8 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 9 && P1C2S4Active == true) {
                P1C2S4Active = false
                buttonBackColor9 = .blue
                if (shipPresence2 == 4) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor9 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 10 && P1C2S5Active == true) {
                P1C2S5Active = false
                buttonBackColor10 = .blue
                if (shipPresence2 == 5) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor10 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 11 && P1C3S1Active == true) {
                P1C3S1Active = false
                buttonBackColor11 = .blue
                if (shipPresence3 == 1) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor11 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 12 && P1C3S2Active == true) {
                P1C3S2Active = false
                buttonBackColor12 = .blue
                if (shipPresence3 == 2) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor12 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 13 && P1C3S3Active == true) {
                P1C3S3Active = false
                buttonBackColor13 = .blue
                if (shipPresence3 == 3) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor13 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 14 && P1C3S4Active == true) {
                P1C3S4Active = false
                buttonBackColor14 = .blue
                if (shipPresence3 == 4) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor14 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                        
                    }
                }
                break
            } else if (n == 15 && P1C3S5Active == true) {
                P1C3S5Active = false
                buttonBackColor15 = .blue
                if (shipPresence3 == 5) {
                    destroiedShipsPlayer = destroiedShipsPlayer + 1
                    buttonBackColor15 = .red
                    if (destroiedShipsPlayer >= 3) {
                        P2C1S1Active = false
                        P2C1S2Active = false
                        P2C1S3Active = false
                        P2C1S4Active = false
                        P2C1S5Active = false
                        P2C2S1Active = false
                        P2C2S2Active = false
                        P2C2S3Active = false
                        P2C2S4Active = false
                        P2C2S5Active = false
                        P2C3S1Active = false
                        P2C3S2Active = false
                        P2C3S3Active = false
                        P2C3S4Active = false
                        P2C3S5Active = false
                        
                        var victories = 0
                        var losses = 0
                        var victoryRate = 0.0
                        
                        for dog in dataManager.dogs {
                            nameDoc = dog.name
                            victories = victories + dog.victories
                            losses = losses + dog.losses
                            
                            print("\(dog.victories)")
                        }
                        
                        losses = losses + 1
                        
                        victoryRate = (Double(victories) / (Double(victories) + Double(losses))) * 100.0
                        
                        print(victories)
                        
                        dataManager.addDog(name: nameDoc, victories: victories,
                                           losses: losses, position: 0, victoryRate: victoryRate)
                        
                    }
                }
                break
            }
            
            
            if (loopStop == true) {
                
                break
                
                
                
            }
            
            
        }
        
        
    }
    
    
    
      
}




struct playComputer_Previews: PreviewProvider {
    static var previews: some View {
        playComputer()
    }
}
