//
//  ImageProfileView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import Kingfisher
import SwiftUI

struct ImageProfileView: View {
    // MARK: - PROPERTIES

    @State var imageProfileURL: String?

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .center, spacing: .zero) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 64, height: 64)
                .background(
                    KFImage(URL(string: imageProfileURL ?? .empty))
                        .resizable()
                        .placeholder {
                            ZStack {
                                Image.photo
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .opacity(0.3)

                                ProgressView()
                                    .progressViewStyle(CircularProgressViewStyle())
                                    .scaleEffect(2)
                            }
                        }
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 64, height: 64)
                        .clipped()
                )
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: -2)
                        .stroke(.white, lineWidth: 4)
                )
        }
        .padding(.vertical, 12)
    }
}

#Preview {
    ImageProfileView()
}
