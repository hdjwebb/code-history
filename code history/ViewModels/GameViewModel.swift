//
//  GameViewModel.swift
//  code history
//
//  Created by Henry Webb on 10/02/2022.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    // MARK: - published properties
    
    @Published private var game = Game()
    
    // MARK: - internal properties
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions) "
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    // MARK: - internal methods
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColour.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColour.correctGuess
            } else {
                return GameColour.incorrectGuess
            }
        } else {
            return GameColour.main
        }
    }
}
