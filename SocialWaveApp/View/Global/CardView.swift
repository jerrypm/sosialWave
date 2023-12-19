//
//  CardView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import Kingfisher
import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES

    @State var imageURL: String?
    var width: CGFloat

    // MARK: - BODY

    var body: some View {
        KFImage(URL(string: imageURL ?? .empty))
            .resizable()
            .downsampling(size: CGSize(width: 250, height: 250))
            .cacheOriginalImage()
            .placeholder {
                ZStack {
                    Image.photo
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .opacity(0.3)

                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
            }
            .scaledToFill()
            .frame(width: width, height: 150)
            .background(Color.white)
            .cornerRadius(6)
            .padding(2)
            .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}
