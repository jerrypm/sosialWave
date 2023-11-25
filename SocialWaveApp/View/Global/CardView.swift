//
//  CardView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import SwiftUI
import Kingfisher

struct CardView: View {
    
    // MARK: - PROPERTIES
    @State var imageURL: String?
    
    // MARK: - BODY
    var body: some View {
        KFImage(URL(string: imageURL ?? .empty))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 150)
            .background(Color.white)
            .cornerRadius(6)
            .padding(2)
    }
}

struct CardExtraView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 4)
            .fill(Color.white)
            .frame(height: 300)
            .padding(5)
    }
}
