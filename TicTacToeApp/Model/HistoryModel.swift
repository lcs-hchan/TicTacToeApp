//
//  HistoryModel.swift
//  TicTacToeApp
//
//  Created by hayden on 2025-04-01.
//

import Foundation

struct HistoryModel: Identifiable {
    let id = UUID()
    let gameNumber: Int
    let gameResult: String
}
