//
//  ContentView.swift
//  TicTacToeApp
//
//  Created by Hayden Chan on 2024-05-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.green
                    .ignoresSafeArea()
                
                VStack{
                    Text("TIC TAC TOE GAME")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    NavigationLink {
                        GamingScreen()
                    } label: {
                        Text("Start")
                            .foregroundStyle(.blue)
                        
                    }

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
