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
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                         possibleAnswers: [
                            "Steve Jobs",
                            "Linus Torvalds",
                            "Bill Gates",
                            "Tim Berners-Lee"
                         ],
                         correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                         possibleAnswers: [
                            "Simula",
                            "Python",
                            "Swift",
                            "C"
                         ],
                         correctAnswerIndex: 0),
        Question(questionText: "What is the tallest mountain on Earth?",
                         possibleAnswers: [
                            "Ben Nevis",
                            "Mont Blanc",
                            "Everest",
                            "Mauna Kea"
                         ],
                         correctAnswerIndex: 2),
        Question(questionText: "Which year did the iMac get released?",
                         possibleAnswers: [
                            "1997",
                            "1998",
                            "1999",
                            "2000"
                         ],
                         correctAnswerIndex: 1)
    ]
}
