//
//  QuestionView.swift
//  Trivia
//
//  Created by Maria Campo Martins on 2023-07-10.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack (spacing: 40) {
            HStack {
                Text("trivia trial")
                    .tealTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id) {
                    answer in AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "next", background: triviaManager.answerSelected ? Color("AccentColor") : .gray)
                
            }
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 245/255, green: 230/255, blue: 225/255))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
    }
}
