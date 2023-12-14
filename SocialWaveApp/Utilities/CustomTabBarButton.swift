//
//  TabBarButton.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/11/23.
//

import SwiftUI

struct TabBarButton: View {
    // MARK: - PROPERTIES
    let text: String
    @Binding var isSelected: Bool
    
    // MARK: - BODY
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .font(.custom("Avenir", size: 16))
            .padding(.bottom,10)
            .frame(maxWidth: .infinity, alignment: .center)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
            .border(width: isSelected ? 2 : 0, edges: [.bottom], color: .white)
    }
}
