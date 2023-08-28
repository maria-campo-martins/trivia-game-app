//
//  TriviaView.swift
//  Trivia
//
//  Created by Maria Campo Martins on 2023-07-10.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("trivia trial")
                    .tealTitle()
                
                Text("congratulations, you've completed the game!")
                
                Text("you scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "play again")
                }
                
                
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 245/255, green: 230/255, blue: 225/255))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
    
    struct TriviaView_Previews: PreviewProvider {
        static var previews: some View {
            TriviaView()
                .environmentObject(TriviaManager())
        }
    }
}
