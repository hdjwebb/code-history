//
//  QuestionView.swift
//  code history
//
//  Created by Henry Webb on 10/02/2022.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        print("tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    }
                }
            }
        }
        
    }
}

