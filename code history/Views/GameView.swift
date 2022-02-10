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
        .navigationBarHidden(true) // new line
        .environmentObject(viewModel) // new line
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
