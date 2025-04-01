//
//  HistoryView.swift
//  TicTacToeApp
//
//  Created by hayden on 2025-04-01.
//

import SwiftUI


struct HistoryView: View {
    
    
    @State var gameHistory: [HistoryModel] = []
    
    
    
    var body: some View {
        ForEach(gameHistory) { currentHistory in
            HStack{
                Text("Game")
                Text("\(currentHistory.gameNumber)")
                Text(currentHistory.gameResult)
            }
        }
    }
}

#Preview {
    HistoryView()
}
