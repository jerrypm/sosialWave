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

    @State var post: Post
    @State var postingUser: QuickUser? = nil
    @State var username: String? = nil

    @State private var isLikedByUser: Bool = false
    @State private var likeCount: Int = 0

    // MARK: - BODY

    var body: some View {
        VStack {
            // Header
            NavigationLink {
                #warning("here")
                // skip ######

            } label: {
                PostHeaderView(profilePicture: $post.profileImg, username: $post.createdBy, postDate: post.date)
                    .padding(.bottom, 12)
            }

            // Body
            PostBodyView(topic: post.topic,
                         category: post.category,
                         comments: post.comments,
                         imageURL: URL(string: post.imageUrl ?? .empty))
                .padding(.bottom, 12)

            // Footer
            PostFooterView(post: post)
        }
        .padding(EdgeInsets(top: 24, leading: 8, bottom: 24, trailing: 8))
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.9))
        )
    }
}

// struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
// }
