//
//  ContentView.swift
//  Trivia
//
//  Created by Maria Campo Martins on 2023-07-10.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
   
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                VStack (spacing: 20) {
                    
                    Text("trivia trial")
                        .tealTitle()
                    
                    Text("are you ready to put yourself to the test?")
                        .foregroundColor(Color("AccentColor"))
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "let's go!")
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(Color(red: 245/255, green: 230/255, blue: 225/255))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
