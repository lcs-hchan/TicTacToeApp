//
//  ScoreView.swift
//  TicTacToeApp
//
//  Created by Hayden Chan on 2024-06-12.
//

import SwiftUI

struct ScoreView: View {
    let player : String
    let score: Int
    var body: some View {
        VStack{
            Text("\(player)")
                .font(.system(size: 20))
                .padding()
            Text("\(score)")
                .font(.system(size: 20))
        }
    }
}

#Preview {
    ScoreView(player: "Hi", score: 1)
}
