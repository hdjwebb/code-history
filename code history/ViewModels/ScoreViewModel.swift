//
//  ScoreViewModel.swift
//  code history
//
//  Created by Henry Webb on 10/02/2022.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
