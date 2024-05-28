//
//  GamingScreen.swift
//  TicTacToeApp
//
//  Created by Hayden Chan on 2024-05-28.
//

import SwiftUI

struct GamingScreen: View {
    var body: some View {
       
        Grid{
            GridRow{
                ForEach(0..<3){ index in
                    ZStack{
                        Rectangle()
                            .frame(width: 125)
                            .frame(height: 125)
                    }
                }
            }
            GridRow{
                ForEach(0..<3){ index in
                    Rectangle()
                        .frame(width: 125)
                        .frame(height: 125)
                }
            }
            GridRow{
                ForEach(0..<3){ index in
                    Rectangle()
                        .frame(width: 125)
                        .frame(height: 125)
                }
            }
            
        }
          
    }
}


#Preview {
    GamingScreen()
}
