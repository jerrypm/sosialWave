//
//  ButtonStyle.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

struct BasicRoundedButton: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .foregroundColor(.white)
            .frame(width: 128, height: 32)
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color(red: 53/255, green: 139/255, blue: 219/255),
                    Color(red: 155/255, green: 236/255, blue: 254/255)]), startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(16)
    }
}

extension View {
    func makeBasicButton() -> some View {
        modifier(BasicRoundedButton())
    }
}


func onBoardingButton(title: String) -> some View {
    Text(title)
        .foregroundColor(Color("BlueMedium"))
        .font(.system(size: 15))
        .fontWeight(.medium)
        .padding(.vertical)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 44, maxHeight: 44, alignment: .center)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 3)
    
}
