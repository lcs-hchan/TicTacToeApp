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
                ForEach(1..<4){ index in
                    Rectangle()
                        .frame(width: 125)
                        .frame(height: 125)
                }
            }
            GridRow{
                ForEach(1..<4){ index in
                    Rectangle()
                        .frame(width: 125)
                        .frame(height: 125)
                }
            }
            GridRow{
                ForEach(1..<4){ index in
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
