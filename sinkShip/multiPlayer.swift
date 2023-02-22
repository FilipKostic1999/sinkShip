//
//  multiPlayer.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-02-22.
//

import SwiftUI
import Firebase

struct multiPlayer: View {
    
    
    @State private var labelText = "x"
    
    // Who plays?
    
    @State private var player1Turn = true
    @State private var player2Turn = false
    
    
    
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
                        
                        
                         if (P1C1S1Active == true && player2Turn == true) {
                         
                         
                         if (shipPresence1 == 1) {
                         buttonBackColor1 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor1 = .blue
                         }
                         
                         
                         P1C1S1Active = false
                         player2Turn = false
                         player1Turn = true
                         
                         }
                         
                         
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor1)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         if (P1C1S2Active == true && player2Turn == true) {
                         
                         if (shipPresence1 == 2) {
                         buttonBackColor2 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
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
                         player2Turn = false
                             player1Turn = true
                         }
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor2)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                    
                         if (P1C1S3Active == true && player2Turn == true) {
                         
                         if (shipPresence1 == 3) {
                         buttonBackColor3 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor3 = .blue
                         }
                         
                         
                         
                         P1C1S3Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor3)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        
                         if (P1C1S4Active == true && player2Turn == true) {
                         
                         if (shipPresence1 == 4) {
                         buttonBackColor4 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor4 = .blue
                         }
                         
                        
                         
                         P1C1S4Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor4)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C1S5Active == true && player2Turn == true) {
                         
                         if (shipPresence1 == 5) {
                         buttonBackColor5 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
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
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                         
                        
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
                        
                        
                        
                         if (P1C2S1Active == true && player2Turn == true) {
                         
                         if (shipPresence2 == 1) {
                         buttonBackColor6 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor6 = .blue
                         }
                         
                       
                         P1C2S1Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor6)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C2S2Active == true && player2Turn == true) {
                         
                         if (shipPresence2 == 2) {
                         buttonBackColor7 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor7 = .blue
                         }
                         
                       
                         
                         P1C2S2Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor7)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C2S3Active == true && player2Turn == true) {
                         
                         if (shipPresence2 == 3) {
                         buttonBackColor8 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
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
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor8)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C2S4Active == true && player2Turn == true) {
                         
                         if (shipPresence2 == 4) {
                         buttonBackColor9 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor9 = .blue
                         }
                         
                       
                         
                         P1C2S4Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor9)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C2S5Active == true && player2Turn == true) {
                         
                         if (shipPresence2 == 5) {
                         buttonBackColor10 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor10 = .blue
                         }
                         
                        
                         
                         P1C2S5Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
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
                        
                        
                         
                         if (P1C3S1Active == true && player2Turn == true) {
                         
                         if (shipPresence3 == 1) {
                         buttonBackColor11 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor11 = .blue
                         }
                         
                         
                         
                         P1C3S1Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor11)
                            .foregroundColor(.black)
                        
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C3S2Active == true && player2Turn == true) {
                         
                         if (shipPresence3 == 2) {
                         buttonBackColor12 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor12 = .blue
                         }
                         
                       
                         
                         P1C3S2Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor12)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         if (P1C3S3Active == true && player2Turn == true) {
                         
                         if (shipPresence3 == 3) {
                         buttonBackColor13 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor13 = .blue
                         }
                         
                         
                             
                         P1C3S3Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor13)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         if (P1C3S4Active == true && player2Turn == true) {
                         
                         if (shipPresence3 == 4) {
                         buttonBackColor14 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor14 = .blue
                         }
                        
                         
                         P1C3S4Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                         
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor14)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                         
                         if (P1C3S5Active == true && player2Turn == true) {
                         
                         if (shipPresence3 == 5) {
                         buttonBackColor15 = .red
                             destroiedShipsPlayer = destroiedShipsPlayer + 1
                             if (destroiedShipsPlayer >= 3) {
                                 player1Grid()
                             }
                         } else {
                         buttonBackColor15 = .blue
                         }
                         
                         
                         
                         P1C3S5Active = false
                         player2Turn = false
                             player1Turn = true
                         }
                         
                         
                        
                        
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
                     
                            
                            P2C1S1Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor16)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                       
                        
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
                            
                            
                           
                            P2C1S2Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor17)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                       
                        
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
                            
                           
                            
                            P2C1S3Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor18)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        
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
                            
                           
                            
                            P2C1S4Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor19)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        
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
                            
                           
                            
                            P2C1S5Active = false
                            player1Turn = false
                            player2Turn = true
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
                            
                          
                            
                            P2C2S1Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor21)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
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
                            
                           
                            P2C2S2Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor22)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                       
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
                            
                           
                            P2C2S3Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor23)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
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
                            
                           
                            
                            P2C2S4Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor24)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        
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
                            
                           
                            P2C2S5Active = false
                            player1Turn = false
                            player2Turn = true
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
                            
                           
                           
                            
                            P2C3S1Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor26)
                            .foregroundColor(.black)
                        
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                      
                        
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
                            
                           
                            
                            P2C3S2Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor27)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
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
                            
                           
                            
                            P2C3S3Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor28)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        
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
                            
                           
                            
                            P2C3S4Active = false
                            player1Turn = false
                            player2Turn = true
                        }
                        
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor29)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                       
                        
                        
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
                            
                            
                            P2C3S5Active = false
                            player1Turn = false
                            player2Turn = true
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
        
        
        winner = "Player1 wins"
        
        
    }
    
    
    
    
    func player1Grid() {
        
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
        
        
        winner = "Player2 wins"
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
    

struct multiPlayer_Previews: PreviewProvider {
    static var previews: some View {
        multiPlayer()
    }
}
