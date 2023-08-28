//
//  Extensions.swift
//  Trivia
//
//  Created by Maria Campo Martins on 2023-07-10.
//

import Foundation
import SwiftUI

extension Text {
    func tealTitle() -> some View {
        self.font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
        
    }
}
