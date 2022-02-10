//
//  QuestionView.swift
//  code history
//
//  Created by Henry Webb on 10/02/2022.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel //new 
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            VStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        print("tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                    .disabled(viewModel.guessWasMade) // disable buttons after guess
                }
            }
            Spacer()
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}

