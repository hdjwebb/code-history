//
//  Question.swift
//  code history
//
//  Created by Henry Webb on 31/01/2022.
//

import Foundation

struct Question: Hashable { // Add Hashable Conformance
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    // Change the questions. Explain Arrays?
    
    static var allQuestions = [
        Question(questionText: "Question 1?",
                         possibleAnswers: [
                            "Answer 1",
                            "Answer 2",
                            "Answer 3",
                            "Answer 4"
                         ],
                         correctAnswerIndex: 3),
        Question(questionText: "Question 2?",
                         possibleAnswers: [
                            "Answer 1",
                            "Answer 2",
                            "Answer 3",
                            "Answer 4"
                         ],
                         correctAnswerIndex: 0),
        Question(questionText: "Question 3?",
                         possibleAnswers: [
                            "Answer 1",
                            "Answer 2",
                            "Answer 3",
                            "Answer 4"
                         ],
                         correctAnswerIndex: 2),
        Question(questionText: "Question 3?",
                         possibleAnswers: [
                            "Answer 1",
                            "Answer 2",
                            "Answer 3",
                            "Answer 4"
                         ],
                         correctAnswerIndex: 1),
        Question(questionText: "Question 4?",
                         possibleAnswers: [
                            "Answer 1",
                            "Answer 2",
                            "Answer 3",
                            "Answer 4"
                         ],
                         correctAnswerIndex: 1)
    ]
}
