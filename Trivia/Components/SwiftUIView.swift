//
//  SwiftUIView.swift
//  Trivia
//
//  Created by Maria Campo Martins on 2023-07-10.
//

import SwiftUI

struct PButton: View {
    
    var text:String
    var background:Color = Color("AccentColor")
    
    var body: some View {
        Text(text)
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 5)
    }
}

struct PButton_Previews: PreviewProvider {
    static var previews: some View {
        PButton(text: "next")
    }
}
