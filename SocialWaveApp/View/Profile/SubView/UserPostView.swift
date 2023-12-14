//
//  UserPostView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import SwiftUI

struct UserPostView: View {
    // MARK: - PROPERTIES
    @State var dummyImages: [ImageModel]
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    // MARK: - BODY
    var body: some View{
        ZStack{
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(dummyImages, id: \.imageUrl) { image in
                    CardView(imageURL: image.imageUrl)
                }
            }
            .padding()
        }
    }
}
