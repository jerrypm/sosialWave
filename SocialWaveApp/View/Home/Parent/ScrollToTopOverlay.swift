//
//  ScrollToTopOverlay.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 18/10/24.
//

import SwiftUI

struct ScrollToTopButtonOverlay: View {
    var scrollViewOffset: CGFloat
    var proxyReader: ScrollViewProxy

    var body: some View {
        if scrollViewOffset < -500 {
            ScrollToTopButton {
                withAnimation(.spring()) {
                    proxyReader.scrollTo(SC.scrollID.value, anchor: .top)
                }
            }
            .offset(
                x: UIScreen.main.bounds.width / 2 - 50,
                y: UIScreen.main.bounds.height / 2 - 200
            )
            .frame(width: 20, height: 20)
        }
    }
}
