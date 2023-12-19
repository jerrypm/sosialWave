//
//  UserLikesView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import SwiftUI

import SwiftUI

struct UserLikesView: View {
    // MARK: - PROPERTIES

    var likedUsers = ["Alice", "Bob", "Charlie", "Diana"]

    // MARK: - BODY

    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    Text(SC.likesby.value)
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.leading)

                    Spacer()
                }

                ForEach(likedUsers, id: \.self) { user in
                    VStack {
                        HStack {
                            Image.heart
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)

                            Text(user)
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)

                            Text(SC.likeUpost.value)
                                .font(.system(size: 12))
                                .foregroundColor(.white)

                            Spacer()

                            Text(determineTimeLabel(for: user)) // Placeholder for time label
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        .padding()

                        Divider()
                            .background(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal)
                }

                Spacer(minLength: 64)
            }
        }
    }

    func determineTimeLabel(for user: String) -> String {
        // Implement your logic here to return "now", "yesterday", or a specific date
        return SC.now.value // Replace with actual logic
    }
}

#Preview {
    UserLikesView()
}
