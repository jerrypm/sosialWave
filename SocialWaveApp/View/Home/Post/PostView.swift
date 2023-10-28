//
//  PostView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    @State var post: Post
    
    @State var postingUser: QuickUser? = nil
    @State var username: String? = nil
    @State var profilePicURL: URL? = nil
    
    @State private var isLikedByUser: Bool = false
    @State private var likeCount: Int = 0
    
    var body: some View {
        VStack {
            
            // Header
            NavigationLink {
                // skip
            } label: {
                PostHeaderView(profilePicture: $profilePicURL, username: $username, postDate: post.date)
                    .padding(.bottom, 12)
            }
            
            // Body
            PostBodyView(stars: post.review,
                         topic: post.topic,
                         category: post.category,
                         comments: post.comments,
                         imageURL: URL(string: post.imageUrl ?? ""))
            .padding(.bottom, 12)
            
        }
        .padding(.vertical, 24)
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
//}

struct CommentsView: View {
    // MARK: BODY
    var body: some View {
        VStack {
        }
    }
    
}
