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
    
    @State var isItExTurn = Bool.random()
    
    @State var winner: SquareState? = nil
    
    @State var xScore = 0
    
    @State var oScore = 0
    
    // MARK: Computed properties
    var gameIsOver: Bool {
        return winner == .ex || winner == .oh
    }
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                HStack{
                       ScoreView(player: "X Score", score: xScore)
                    Spacer()
                    VStack{
                        if winner == .ex {
                            Text("X is winner")
                        }else if winner == .oh{
                            Text("O is winner")
                        }
                        Text(isItExTurn ? "X Turn":"O Turn")
                            .font(.system(size: 30))
                            .foregroundStyle(.blue)
                    }
                    Spacer()
                        ScoreView(player: "O Score", score: oScore)
                }
                
                Grid{
                    GridRow{
                        ForEach(0..<3){ index in
                            ZStack{
                                RectangleIView()
                                if board.squares[index] == SquareState.empty {
                                    Button(" ", action: {
                                        if gameIsOver == false {
                                            if isItExTurn == true {
                                                board.squares[index] = SquareState.ex
                                            } else {
                                                // Assign "oh" to the squre
                                                board.squares[index] = SquareState.oh
                                            }
                                            checkWin(forPlayer: isItExTurn ? .ex : .oh)
                                            isItExTurn.toggle()

                                        }
                                    })
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 100))
                                    .ignoresSafeArea()
                                    
                                } else if board.squares[index] == SquareState.ex{
                                    Button("X", action: {})
                                        .foregroundStyle(.blue)
                                        .font(.system(size: 100))
                                        .ignoresSafeArea()
                                }
                                else if board.squares[index] == SquareState.oh{
                                    Button("O", action: {})
                                        .foregroundStyle(.blue)
                                        .font(.system(size: 100))
                                        .ignoresSafeArea()
                                }
                                    
                                
                            }
                        }
                    }
                    GridRow{
                        ForEach(3..<6){ index in
                            ZStack{
                                RectangleIView()
                                if board.squares[index] == SquareState.empty {
                                    Button(" ", action: {
                                        if gameIsOver == false{
                                        if isItExTurn == true {
                                            // Assign "oh" to the squre
                                            board.squares[index] = SquareState.ex
                                            
                                        } else {
                                            // Assign "oh" to the squre
                                            board.squares[index] = SquareState.oh
                                        }
                                        checkWin(forPlayer: isItExTurn ? .ex : .oh)
                                        isItExTurn.toggle()
                                    }
                                    })
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 100))
                                    .ignoresSafeArea()
                                    
                                } else if board.squares[index] == SquareState.ex{
                                    Button("X", action: {})
                                        .foregroundStyle(.blue)
                                        .font(.system(size: 100))
                                        .ignoresSafeArea()
                                }
                                else if board.squares[index] == SquareState.oh{
                                    Button("O", action: {})
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
                                RectangleIView()
                                if board.squares[index] == SquareState.empty {
                                    Button(" ", action: {
                                        if gameIsOver == false{
                                        if isItExTurn == true {
                                            // Assign "oh" to the squre
                                            board.squares[index] = SquareState.ex
                                            
                                        } else {
                                            // Assign "oh" to the squre
                                            board.squares[index] = SquareState.oh
                                        }
                                        checkWin(forPlayer: isItExTurn ? .ex : .oh)
                                        isItExTurn.toggle()
                                    }
                                    })
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 100))
                                    .ignoresSafeArea()
                                    
                                } else if board.squares[index] == SquareState.ex{
                                    Button("X", action: {})
                                        .foregroundStyle(.blue)
                                        .font(.system(size: 100))
                                        .ignoresSafeArea()
                                }
                                else if board.squares[index] == SquareState.oh{
                                    Button("O", action: {})
                                        .foregroundStyle(.blue)
                                        .font(.system(size: 100))
                                        .ignoresSafeArea()
                                }
                                   
                            }
                        }
                    }
                    
                }
                Button(action: {restart()}, label: {
                    Text("Restart Game")
                        .font(.system(size: 25))
                        .foregroundStyle(.white)
                })
            }
        }
        
    }
    
    func restart(){
        board = GameBoard()
        isItExTurn = Bool.random()
        winner = nil
    }
        
    func checkWin(forPlayer player: SquareState){
        if  board.squares[0] == SquareState.ex &&
            board.squares[1] == SquareState.ex &&
            board.squares[2] == SquareState.ex ||
            
                board.squares[3] == SquareState.ex &&
                board.squares[4] == SquareState.ex &&
                board.squares[5] == SquareState.ex ||
            
                board.squares[6] == SquareState.ex &&
                board.squares[7] == SquareState.ex &&
                board.squares[8] == SquareState.ex ||
                
                board.squares[0] == SquareState.ex &&
                board.squares[3] == SquareState.ex &&
                board.squares[6] == SquareState.ex ||
            
                board.squares[1] == SquareState.ex &&
                board.squares[4] == SquareState.ex &&
                board.squares[7] == SquareState.ex ||
        
                board.squares[2] == SquareState.ex &&
                board.squares[5] == SquareState.ex &&
                board.squares[8] == SquareState.ex ||
        
                board.squares[0] == SquareState.ex &&
                board.squares[4] == SquareState.ex &&
                board.squares[8] == SquareState.ex ||
                
                board.squares[2] == SquareState.ex &&
                board.squares[4] == SquareState.ex &&
                board.squares[6] == SquareState.ex  {
            winner = .ex
            xScore += 1
            
        } else if
            board.squares[0] == SquareState.oh &&
                board.squares[1] == SquareState.oh &&
                board.squares[2] == SquareState.oh ||
                
                    board.squares[3] == SquareState.oh &&
                    board.squares[4] == SquareState.oh &&
                    board.squares[5] == SquareState.oh ||
                
                    board.squares[6] == SquareState.oh &&
                    board.squares[7] == SquareState.oh &&
                    board.squares[8] == SquareState.oh ||
                    
                    board.squares[0] == SquareState.oh &&
                    board.squares[3] == SquareState.oh &&
                    board.squares[6] == SquareState.oh ||
                
                    board.squares[1] == SquareState.oh &&
                    board.squares[4] == SquareState.oh &&
                    board.squares[7] == SquareState.oh ||
            
                    board.squares[2] == SquareState.oh &&
                    board.squares[5] == SquareState.oh &&
                    board.squares[8] == SquareState.oh ||
            
                    board.squares[0] == SquareState.oh &&
                    board.squares[4] == SquareState.oh &&
                    board.squares[8] == SquareState.oh ||
                    
                    board.squares[2] == SquareState.oh &&
                    board.squares[4] == SquareState.oh &&
                    board.squares[6] == SquareState.oh{
            winner = .oh
            oScore += 1
        }
        
        
    }
    
    
    
    
   
}

#Preview {
    GamingScreen()
}
