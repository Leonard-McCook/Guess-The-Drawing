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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GameView(matchManager: MatchManager())
}
