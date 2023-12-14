//
//  TextFieldStyles.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

struct BasicRoundedTextField: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(12)
            .background(Color.white.opacity(0.2))
            .cornerRadius(8)
    }
}

extension View {
    func makeBasicTextField() -> some View {
        modifier(BasicRoundedTextField())
    }
}
