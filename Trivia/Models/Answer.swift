//
//  Answer.swift
//  Trivia
//
//  Created by Maria Campo Martins on 2023-07-10.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool 
}
