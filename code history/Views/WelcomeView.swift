//
//  WelcomeView.swift
//  code history
//
//  Created by Henry Webb on 03/02/2022.
//

import SwiftUI

struct WelcomeView: View {
    
//    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
//    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColour.mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay let's go!")
                        })
                    
                }
                .foregroundColor(.white)
            }
        }
    }
}


