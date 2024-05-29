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
                        Button("X", action: {})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }
                }
            }
            GridRow{
                ForEach(3..<6){ index in
                    ZStack{
                        Rectangle()
                            .frame(width: 125)
                            .frame(height: 125)
                        Button("X", action: {})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }

                }
            }
            GridRow{
                ForEach(6..<9){ index in
                    ZStack{
                        Rectangle()
                            .frame(width: 125)
                            .frame(height: 125)
                        Button("X", action: {})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }
                }
            }
            
        }
          
    }
}


#Preview {
    GamingScreen()
}
