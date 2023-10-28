//
//  PostBodyView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 28/10/23.
//

import SwiftUI
import Kingfisher

struct PostBodyView: View {
    
    @State var stars: Int?
    @State var topic: String?
    @State var category: String?
    @State var comments: String?
    @State var imageURL: URL?
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 14)
            HStack(spacing: 22) {
                if let stars = stars {
                    Spacer() // idk why this needs to be here but it seems like it does
                        .frame(width: 0)
                    RatingCircleView(rating: stars)
                        .padding(.bottom, 8)
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text(topic ?? "")
                        .font(.system(size: 16, weight: .bold))
                    Spacer()
                        .frame(height: 3)
                    Text(category ?? "")
                        .font(.system(size: 14))
                        .foregroundColor(.blue)
                    Text(comments ?? "")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            if let imageURL = imageURL {
                KFImage(imageURL)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            } else {
                Spacer()
                    .frame(height: 6)
            }
        }
        .background(Color.white)
        .cornerRadius(12)
    }
}

struct PostBodyView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            PostBodyView(stars: 5,
                         topic: "Antonio's pizzeria",
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

