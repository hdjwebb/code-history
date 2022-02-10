//
//  GameViewModel.swift
//  code history
//
//  Created by Henry Webb on 10/02/2022.
//

import SwiftUI

    // 1
class GameViewModel: ObservableObject {
    
    // MARK: - published properties
    // 2
    
    @Published private var game = Game()
    
    // MARK: - internal properties
    // 3
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    // 4
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions) "
    }
    
    //1
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    // MARK: - internal methods
    // 2
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    // 3
    func displayNextScreen() {
        game.updateGameStatus()
    }
}
