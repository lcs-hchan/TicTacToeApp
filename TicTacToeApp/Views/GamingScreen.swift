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
    let winpatterns = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[3,5,7],
    ]
    

    
    @State var board = GameBoard()
    
    @State var isItExTurn = Bool.random()
    
    // MARK: Computed properties
    var body: some View {
        VStack{
            if isItExTurn == true{
                Text("X Turn")
                    .font(.system(size: 30))
            }else{
                Text("O Turn")
                    .font(.system(size: 30))
            }
            
            Grid{
                GridRow{
                    ForEach(0..<3){ index in
                        ZStack{
                            Rectangle()
                                .frame(width: 125)
                                .frame(height: 125)
                            if board.squares[index] == SquareState.empty {
                                Button(" ", action: {
                                    if isItExTurn == true {
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
            })
        }
        
    }
    
    func restart(){
        board = GameBoard()
        isItExTurn = Bool.random()
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
                
                board.squares[3] == SquareState.ex &&
                board.squares[5] == SquareState.ex &&
                board.squares[7] == SquareState.ex  {
            print("Ex WIns")
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
                    
                    board.squares[3] == SquareState.oh &&
                    board.squares[5] == SquareState.oh &&
                    board.squares[7] == SquareState.oh{
            print("O wins")
        }
       
                
    }
    
    
    
   
}

#Preview {
    GamingScreen()
}
