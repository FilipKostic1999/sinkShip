//
//  playComputer.swift
//  sinkShip
//
//  Created by Filip Kostic on 2023-01-30.
//

import SwiftUI

struct playComputer: View {
    
    @State private var labelText = "x"
    @State private var player1Turn = true
    @State private var P1C1S1Active = true
    @State private var P1C1S1Ship = false
    let number = Int(arc4random_uniform(2) + 1)
   
    // gubj
    @State private var buttonBackColor : Color = .white
    
  
    var body: some View {

        VStack {
            
            Spacer()
            
            
            HStack {
                
               
                    Button(action: {
                        labelText = "x"
                        
                        if (P1C1S1Active == true && player1Turn == true) {
                            
                            if (number == 1) {
                                buttonBackColor = .red
                            } else if (number == 2) {
                                buttonBackColor = .blue
                            }
                            
                            if (self.buttonBackColor == .white) {
                                self.buttonBackColor = .white
                            } else if self.buttonBackColor == .blue {
                                self.buttonBackColor = .blue
                            } else if self.buttonBackColor == .red {
                                self.buttonBackColor = .red
                            }
                            
                            P1C1S1Active = false
                            player1Turn = false
                        }
                        
                    }, label: {
                        Text("\(labelText)")
                            .padding() // makes background color thick
                            .background(buttonBackColor)
                            .foregroundColor(.black)
                    })
                    
                
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })

                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                
                
            }
            
            
            HStack {
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
            }
            
            
            HStack {
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                    
                })
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                Button(action: {
                    labelText = "x"
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
            }
            
            
            
            Spacer()
            Spacer()
            
            HStack {
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
            }
            
            
            HStack {
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
            }
            
            
            HStack {
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                    
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
                
                
                Button(action: {
                    labelText = ""
                }, label: {
                    Text("\(labelText)")
                        .padding() // makes background color thick
                        .background(.blue)
                        .foregroundColor(.black)
                })
            }
            
            
            
            Spacer()
            
            
            
            
        }.font(Font.custom("font1", size: 42))
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    func generateRandomShipPositions() {
        
        let number = Int.random(in: 0 ..< 2)
        
        if (number == 1) {
            P1C1S1Ship = true
        } else if (number == 2) {
            P1C1S1Ship = false
        }
        
        
        
    }
    
    
      
}




struct playComputer_Previews: PreviewProvider {
    static var previews: some View {
        playComputer()
    }
}
