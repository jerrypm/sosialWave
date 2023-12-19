//
//  ScrollTopView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 19/12/23.
//

import SwiftUI

struct ScrollToTopButton: View {
    @State private var isButtonHidden = true
    var onScrollToTop: () -> Void

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    onScrollToTop()
                }) {
                    Image.arrowUpCircle
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.primary.opacity(0.9))
                        .background(Color.white)
                        .cornerRadius(18)
                        .shadow(radius: 5)
                }
                .padding(.trailing, 4)
                .padding(.bottom, 4)
                .opacity(isButtonHidden ? 0 : 1)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.5)) {
                isButtonHidden.toggle()
            }
        }
        .onAppear {
            // Show the button after a delay or based on your criteria
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    isButtonHidden = false
                }
            }
        }
    }
}

#Preview {
    ScrollToTopButton {}
}
