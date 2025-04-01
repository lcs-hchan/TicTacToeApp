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
                LinearGradient(gradient: Gradient(colors: [Color.red,Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                 
                VStack{
                    Text("TIC TAC TOE GAME")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    NavigationLink {
                        GamingScreen()
                    } label: {
                        Text("Start")
                            .foregroundStyle(.blue)
                            .font(.system(size: 50))
                        
                    }
                    NavigationLink {
                        HistoryView()
                    } label: {
                        Text("History")
                            .foregroundStyle(.blue)
                            .font(.system(size: 50))
                        
                    }
                    

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
