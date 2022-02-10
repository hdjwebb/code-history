//
//  ContentView.swift
//  code history
//
//  Created by Henry Webb on 28/01/2022.
//

import SwiftUI

struct GameView: View {
    
//    let question = Question(
//        questionText: "What was the first computer bug?",
//        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
//        correctAnswerIndex: 2
//    )
    
    @StateObject var viewModel = GameViewModel() //updated

    
    var body: some View {
        ZStack {
            GameColour.main.ignoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
