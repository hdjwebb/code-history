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
}
