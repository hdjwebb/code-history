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
                    .padding(.leading, 2.0)
                QuestionView(question: viewModel.currentQuestion)
            }
            .padding(.horizontal, 2.0)
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
