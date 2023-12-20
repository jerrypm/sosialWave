//
//  CustomButtons.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 20/12/23.
//

import SwiftUI

// MARK: Fill Button

struct FillButton: View {
    @State var textButton: String?
    var onTap: () -> Void

    var body: some View {
        Button {
            onTap()
        } label: {
            Text(textButton ?? .empty)
                .foregroundColor(.primary)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 30)
                .background(Color.secondary)
                .cornerRadius(10)
        }
    }
}

// MARK: Border Button

struct BorderButton: View {
    @State var textButton: String?
    var onTap: () -> Void

    var body: some View {
        Button {
            onTap()
        } label: {
            Text(textButton ?? .empty)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 44)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black)
                }
        }
    }
}
