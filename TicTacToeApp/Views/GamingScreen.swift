//
//  GamingScreen.swift
//  TicTacToeApp
//
//  Created by Hayden Chan on 2024-05-28.
//

import SwiftUI

enum SquareState {
    case empty
    case ex
    case oh
}

struct GamingScreen: View {
    
    // MARK: Stored propeties
    @State var board = GameBoard()
    
    @State var isItExTurn: Bool = true
    
    // MARK: Computed properties
    var body: some View {
        
        let _ = dump(board)
        VStack{
            Text("X Turn")
                .font(.system(size: 50))
                
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
            ForEach(3..<6){ index in
                ZStack{
                    Rectangle()
                        .frame(width: 125)
                        .frame(height: 125)
                    
                    if board.squares[index] == SquareState.empty {
                        Button(" ", action: {
                            if isItExTurn == true {
                                // Assign "oh" to the squre
                                board.squares[index] = SquareState.ex

                            } else {
                                // Assign "oh" to the squre
                                board.squares[index] = SquareState.oh
                            }
                            
                            isItExTurn.toggle()
                        })
                        .foregroundStyle(.blue)
                        .font(.system(size: 100))
                        .ignoresSafeArea()
                        
                    } else if board.squares[index] == SquareState.ex{
                        Button("X", action: {board.squares[index] = SquareState.oh})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }
                    else if board.squares[index] == SquareState.oh{
                        Button("O", action: {board.squares[index] = SquareState.empty})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }
                    
                }
                
            }
        }
        GridRow{
            ForEach(6..<9){ index in
                ZStack{
                    Rectangle()
                        .frame(width: 125)
                        .frame(height: 125)
                    if board.squares[index] == SquareState.empty {
                        Button(" ", action: {
                            board.squares[index] = SquareState.ex
                        })
                        .foregroundStyle(.blue)
                        .font(.system(size: 100))
                        .ignoresSafeArea()
                        
                    } else if board.squares[index] == SquareState.ex{
                        Button("X", action: {board.squares[index] = SquareState.oh})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                        
                    }
                    else if board.squares[index] == SquareState.oh{
                        Button("O", action: {board.squares[index] = SquareState.empty})
                            .foregroundStyle(.blue)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                        
                    }
                    
                    
                }
            }
        }
        
    }
            Button(action: {}, label: {
                Text("Restart Game")
            })
        }
        
    }
    let winpatterns = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[3,5,7],
    ]
    
   
}
   
  

#Preview {
    GamingScreen()
}
