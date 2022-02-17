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
        Question(questionText: "Who invented the \nWorld Wide Web?",
                         possibleAnswers: [
                            "Steve Jobs",
                            "Linus Torvalds",
                            "Bill Gates",
                            "Tim Berners-Lee"
                         ],
                         correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming \nlanguage?",
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
        Question(questionText: "Which year did the \niMac get released?",
                         possibleAnswers: [
                            "1997",
                            "1998",
                            "1999",
                            "2000"
                         ],
                         correctAnswerIndex: 1),
        Question(questionText: "How many circles are in the Olympic rings?",
                         possibleAnswers: [
                            "3",
                            "5",
                            "7",
                            "4"
                         ],
                         correctAnswerIndex: 1),
        Question(questionText: "What is cucumber in Spanish?",
                         possibleAnswers: [
                            "Cerco",
                            "Piponmio",
                            "Losaugo",
                            "Pepino"
                         ],
                         correctAnswerIndex: 3),
        Question(questionText: "What is (4 + 5) / 3 * 5 - 1 ?",
                         possibleAnswers: [
                            "14",
                            "0.4",
                            "12",
                            "0.6428571429"
                         ],
                         correctAnswerIndex: 0)
    ]
}
