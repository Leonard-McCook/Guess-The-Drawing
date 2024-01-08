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
                
                
            }
        }
    }
}

#Preview {
    GameView(matchManager: MatchManager())
}
