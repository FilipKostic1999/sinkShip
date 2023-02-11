//
//  playComputer.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-30.
//

import SwiftUI

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
    
    @State private var shipPresence1 = Int(arc4random_uniform(15) + 1)
    @State private var shipPresence2 = Int(arc4random_uniform(15) + 1)
    
    
    
    let number = 1
    
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
    
    
    
    @State private var loopStop = 0
    
    
    init() {
        
        placeRandomShips()
        
        
    }
    
  
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
                        
                        if (P1C1S1Active == true && player1Turn == true) {
                            
                            if (shipPresence1 == 1) {
                                buttonBackColor1 = .red
                            } else if (shipPresence1 == 2) {
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
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor1)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        if (P1C1S2Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor2 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor2)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        if (P1C1S3Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor3 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor3)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        
                        if (P1C1S4Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor4 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor4)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C1S5Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor5 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
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
                        
                        
                        if (P1C2S1Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor6 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor6)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C2S2Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor7 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor7)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C2S3Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor8 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor8)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C2S4Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor9 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor9)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        if (P1C2S5Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor10 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
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
                        
                        if (P1C3S1Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor11 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor11)
                            .foregroundColor(.black)
                        
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C3S2Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor12 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor12)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        if (P1C3S3Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor13 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor13)
                            .foregroundColor(.black)
                    })
                    
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C3S4Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor14 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor14)
                            .foregroundColor(.black)
                    })
                    
                    
                    Button(action: {
                        labelText = "x"
                        
                        
                        if (P1C3S5Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor15 = .red
                            } else if (number == 2) {
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
                            player1Turn = false
                        }
                        
                        
                        
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor15)
                            .foregroundColor(.black)
                    })
                }
                
                
                
                Spacer()
                Spacer()
                
                HStack {
                    Button(action: {
                        labelText = "x"
                        
                        
                        if (P2C1S1Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor16 = .red
                            } else if (number == 2) {
                                buttonBackColor16 = .blue
                            }
                            
                            if (self.buttonBackColor16 == .white) {
                                self.buttonBackColor16 = .white
                            } else if self.buttonBackColor16 == .blue {
                                self.buttonBackColor16 = .blue
                            } else if self.buttonBackColor16 == .red {
                                self.buttonBackColor16 = .red
                            }
                            
                            P2C1S1Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor17 = .red
                            } else if (number == 2) {
                                buttonBackColor17 = .blue
                            }
                            
                            if (self.buttonBackColor17 == .white) {
                                self.buttonBackColor17 = .white
                            } else if self.buttonBackColor17 == .blue {
                                self.buttonBackColor17 = .blue
                            } else if self.buttonBackColor17 == .red {
                                self.buttonBackColor17 = .red
                            }
                            
                            P2C1S2Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor18 = .red
                            } else if (number == 2) {
                                buttonBackColor18 = .blue
                            }
                            
                            if (self.buttonBackColor18 == .white) {
                                self.buttonBackColor18 = .white
                            } else if self.buttonBackColor18 == .blue {
                                self.buttonBackColor18 = .blue
                            } else if self.buttonBackColor18 == .red {
                                self.buttonBackColor18 = .red
                            }
                            
                            P2C1S3Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor19 = .red
                            } else if (number == 2) {
                                buttonBackColor19 = .blue
                            }
                            
                            if (self.buttonBackColor19 == .white) {
                                self.buttonBackColor19 = .white
                            } else if self.buttonBackColor19 == .blue {
                                self.buttonBackColor19 = .blue
                            } else if self.buttonBackColor19 == .red {
                                self.buttonBackColor19 = .red
                            }
                            
                            P2C1S4Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor20 = .red
                            } else if (number == 2) {
                                buttonBackColor20 = .blue
                            }
                            
                            if (self.buttonBackColor20 == .white) {
                                self.buttonBackColor20 = .white
                            } else if self.buttonBackColor20 == .blue {
                                self.buttonBackColor20 = .blue
                            } else if self.buttonBackColor20 == .red {
                                self.buttonBackColor20 = .red
                            }
                            
                            P2C1S5Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor21 = .red
                            } else if (number == 2) {
                                buttonBackColor21 = .blue
                            }
                            
                            if (self.buttonBackColor21 == .white) {
                                self.buttonBackColor21 = .white
                            } else if self.buttonBackColor21 == .blue {
                                self.buttonBackColor21 = .blue
                            } else if self.buttonBackColor21 == .red {
                                self.buttonBackColor21 = .red
                            }
                            
                            P2C2S1Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor22 = .red
                            } else if (number == 2) {
                                buttonBackColor22 = .blue
                            }
                            
                            if (self.buttonBackColor22 == .white) {
                                self.buttonBackColor22 = .white
                            } else if self.buttonBackColor22 == .blue {
                                self.buttonBackColor22 = .blue
                            } else if self.buttonBackColor22 == .red {
                                self.buttonBackColor22 = .red
                            }
                            
                            P2C2S2Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor23 = .red
                            } else if (number == 2) {
                                buttonBackColor23 = .blue
                            }
                            
                            if (self.buttonBackColor23 == .white) {
                                self.buttonBackColor23 = .white
                            } else if self.buttonBackColor23 == .blue {
                                self.buttonBackColor23 = .blue
                            } else if self.buttonBackColor23 == .red {
                                self.buttonBackColor23 = .red
                            }
                            
                            P2C2S3Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor24 = .red
                            } else if (number == 2) {
                                buttonBackColor24 = .blue
                            }
                            
                            if (self.buttonBackColor24 == .white) {
                                self.buttonBackColor24 = .white
                            } else if self.buttonBackColor24 == .blue {
                                self.buttonBackColor24 = .blue
                            } else if self.buttonBackColor24 == .red {
                                self.buttonBackColor24 = .red
                            }
                            
                            P2C2S4Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor25 = .red
                            } else if (number == 2) {
                                buttonBackColor25 = .blue
                            }
                            
                            if (self.buttonBackColor25 == .white) {
                                self.buttonBackColor25 = .white
                            } else if self.buttonBackColor25 == .blue {
                                self.buttonBackColor25 = .blue
                            } else if self.buttonBackColor25 == .red {
                                self.buttonBackColor25 = .red
                            }
                            
                            P2C2S5Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor26 = .red
                            } else if (number == 2) {
                                buttonBackColor26 = .blue
                            }
                            
                            if (self.buttonBackColor26 == .white) {
                                self.buttonBackColor26 = .white
                            } else if self.buttonBackColor26 == .blue {
                                self.buttonBackColor26 = .blue
                            } else if self.buttonBackColor26 == .red {
                                self.buttonBackColor26 = .red
                            }
                            
                            P2C3S1Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor27 = .red
                            } else if (number == 2) {
                                buttonBackColor27 = .blue
                            }
                            
                            if (self.buttonBackColor27 == .white) {
                                self.buttonBackColor27 = .white
                            } else if self.buttonBackColor27 == .blue {
                                self.buttonBackColor27 = .blue
                            } else if self.buttonBackColor27 == .red {
                                self.buttonBackColor27 = .red
                            }
                            
                            P2C3S2Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor28 = .red
                            } else if (number == 2) {
                                buttonBackColor28 = .blue
                            }
                            
                            if (self.buttonBackColor28 == .white) {
                                self.buttonBackColor28 = .white
                            } else if self.buttonBackColor28 == .blue {
                                self.buttonBackColor28 = .blue
                            } else if self.buttonBackColor28 == .red {
                                self.buttonBackColor28 = .red
                            }
                            
                            P2C3S3Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor29 = .red
                            } else if (number == 2) {
                                buttonBackColor29 = .blue
                            }
                            
                            if (self.buttonBackColor29 == .white) {
                                self.buttonBackColor29 = .white
                            } else if self.buttonBackColor29 == .blue {
                                self.buttonBackColor29 = .blue
                            } else if self.buttonBackColor29 == .red {
                                self.buttonBackColor29 = .red
                            }
                            
                            P2C3S4Active = false
                            player1Turn = false
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
                            
                            if (number == 1) {
                                buttonBackColor30 = .red
                            } else if (number == 2) {
                                buttonBackColor30 = .blue
                            }
                            
                            if (self.buttonBackColor30 == .white) {
                                self.buttonBackColor30 = .white
                            } else if self.buttonBackColor30 == .blue {
                                self.buttonBackColor30 = .blue
                            } else if self.buttonBackColor30 == .red {
                                self.buttonBackColor30 = .red
                            }
                            
                            P2C3S5Active = false
                            player1Turn = false
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
    
    
    
    
    func placeRandomShips() {
        
       
        
        
    }
    
    
    
      
}




struct playComputer_Previews: PreviewProvider {
    static var previews: some View {
        playComputer()
    }
}
