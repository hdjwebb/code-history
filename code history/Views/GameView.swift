//
//  ContentView.swift
//  code history
//
//  Created by Henry Webb on 28/01/2022.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
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
