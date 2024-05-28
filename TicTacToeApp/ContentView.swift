//
//  ContentView.swift
//  TicTacToeApp
//
//  Created by Hayden Chan on 2024-05-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack{
                Text("TIC TAC TOE GAME")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Start")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .navigationTitle("Start")
            }
        }
    }
}

#Preview {
    ContentView()
}
