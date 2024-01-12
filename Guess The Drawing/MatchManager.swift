//
//  MatchManager.swift
//  Guess The Drawing
//
//  Created by Leonard McCook-Carr on 12/30/23.
//

import Foundation

class MatchManager: ObservableObject {
    @Published var inGame = false
    @Published var isGameOver = false
    @Published var authenticationState = PlayerAuthState.authenticating
    
    @Published var currentlyDrawing = true
    @Published var drawPrompt = ""
    @Published var pastGuesses = [PastGuess]()
    
    @Published var score = 0
    @Published var remainingTime = maxTimeRemaining
    
}
