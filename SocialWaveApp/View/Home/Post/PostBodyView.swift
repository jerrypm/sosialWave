//
//  PostBodyView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 28/10/23.
//

import Kingfisher
import SwiftUI

struct PostBodyView: View {
    // MARK: - PROPERTIES

    @State var topic: String?
    @State var category: String?
    @State var comments: String?
    @State var imageURL: URL?

    // MARK: - BODY

    var body: some View {
        VStack {
            if let imageURL = imageURL {
                KFImage(imageURL)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            } else {
                Spacer()
                    .frame(height: 6)
            }
            Spacer()
                .frame(height: 14)
            HStack(spacing: 22) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 4) {
                        Text("\(topic ?? ""),")
                            .font(.system(size: 16, weight: .bold))
                            .frame(height: 3)
                        Text(category ?? "")
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Text(comments ?? "")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 24, trailing: 16))
        }
        .background(Color.white)
        .cornerRadius(12)
    }
}

struct PostBodyView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            PostBodyView(topic: "Antonio's pizzeria",
                         category: "Food & Drink",
                         comments: "One of the better pizza spots around town",
                         imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg")!)
                .padding(.horizontal)
                .frame(width: UIScreen.main.bounds.width)
            Spacer()
        }
        .background(.gray)
    }
}
