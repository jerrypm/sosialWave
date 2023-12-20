//
//  UserPostView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import SwiftUI

struct UserPostView: View {
    // MARK: - PROPERTIES

    @State var images: [String]
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    // MARK: - BODY

    var body: some View {
        ZStack {
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(images, id: \.self) { image in
                    let screenWidth = UIScreen.main.bounds.width
                    let totalSpacing = CGFloat(columns.count - 1) * 10
                    let adjustedWidth = (screenWidth - totalSpacing - 64) / CGFloat(columns.count)
                    CardView(imageURL: image, width: adjustedWidth)
                }
            }
        }
    }
}
