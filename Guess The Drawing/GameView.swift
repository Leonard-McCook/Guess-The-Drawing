//
//  GameView.swift
//  Guess The Drawing
//
//  Created by Leonard McCook-Carr on 1/7/24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var drawingGuess = ""
    @State var eraserEnabled = ""
    
    func makeGuess() {
        // TODO: Submit the guess
    }
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                Image(matchManager.currentlyDrawing ? "drawBg" : "guesserBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .scaleEffect(1.1)
                
                VStack {
                    topBar
                }
            }
        }
    }
    
    var topBar: some View {
        ZStack {
            HStack {
                Button {
                    // TODO: Disconnect From Game
                } label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .font(.largeTitle)
                        .tint(Color(matchManager
                            .currentlyDrawing ?
                            "primaryYellow" :
                            "primaryPurple"))
                }
                
                Spacer()
                
                Label("\(matchManager.remainingTime)",
                    systemImage: "clock.fill")
                .bold()
                .font(.title2)
                .foregroundStyle((Color(matchManager
                    .currentlyDrawing ?
                    "primaryYellow" :
                    "primaryPurple")))
            }
        }
        .padding(.vertical, 15)
    }
}

#Preview {
    GameView(matchManager: MatchManager())
}
