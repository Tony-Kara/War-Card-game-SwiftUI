//
//  ContentView.swift
//  War Card game SwiftUI
//
//  Created by mac on 8/24/21.
//

import SwiftUI

struct ContentView: View {
    
    @State  var playerCard = "card7"
    @State  var cpuCard = "card9"
    @State  var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
   
       
          ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
              
                Spacer()
                Image("logo")
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    
                    //update the card
                    
                    playerCard = "card8"
                    cpuCard = "card12"
                    
                    // update the score
                    playerScore += 1
                    cpuScore += 1
                    
                }, label: {
                   Image("dealbutton")
                })
                
                Spacer()
               
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
              
                Spacer()
                
                
            }
            
            
            
            
            
            }
            
            
            
            
            
            
            
     
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
