//
//  CustomTopTabBar.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/11/23.
//

import SwiftUI

struct CustomTopTabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20) {
            Spacer()
            TabBarButton(text: SC.myPost.value, isSelected: .constant(tabIndex == .zero))
                .onTapGesture { onButtonTapped(index: .zero) }
            Spacer()
            TabBarButton(text: SC.likes.value, isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
            Spacer()
        }
    }

    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}
