//
//  ContentView.swift
//  code history
//
//  Created by Henry Webb on 28/01/2022.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
//    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        // Define the view that will be returned for each index
                        // use the layout below
                        //
                        // Button(action: {
                        //   print("Tapped on Choice 1")
                        // }, label: {
                        //   ChoiceTextView(choiceText: question.possibleAnswers[0])
                        // })
                        
                        Button(action: {
                          print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? GameColour.correctGuess : GameColour.incorrectGuess
                        }, label: {
                          ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }


                }
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
