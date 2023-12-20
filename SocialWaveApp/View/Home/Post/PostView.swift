//
//  PostView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import Kingfisher
import SwiftUI

struct PostView: View {
    // MARK: - PROPERTIES

    @State var post: PostModel
    @State var postingUser: QuickUser? = nil
    @State private var likeCount: Int = .zero

    var onTap: () -> Void

    // MARK: - BODY

    var body: some View {
        ZStack {
            VStack {
                // Header
                NavigationLink {
                    #warning("here link to full image")
                    // skip ######

                } label: {
                    PostHeaderView(profilePicture: $post.profileImg, username: $post.createdBy, postDate: post.date)
                        .padding(.bottom, 12)
                }

                // Body
                PostBodyView(topic: post.topic,
                             category: post.category,
                             description: post.descriptionPost,
                             imageURL: URL(string: post.imageUrl ?? .empty))
                    .padding(.bottom, 12)

                // Footer
                PostFooterView(post: post) {
                    onTap()
                }
            }
            .padding(EdgeInsets(top: 24, leading: 8, bottom: 24, trailing: 8))
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.9))
            )

        }
    }
}
