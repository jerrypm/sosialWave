//
//  CommentsView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 18/12/23.
//

import SwiftUI

struct CommentsView: View {
    // MARK: - PROPERTIES

    let comments: [CommentPost]?

    // MARK: - BODY

    var body: some View {
        VStack {
            // header
            HStack {
                Text(SC.comments.value)
                    .font(.headline)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))

                Spacer()
            }

            if let comments = comments, !comments.isEmpty {
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(comments, id: \.self) { comment in
                            CommentRow(username: comment.user, comment: comment.comment, profileImage: comment.profilePicture)
                                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        }
                    }
                }
            } else {
                Text(SC.noCommentsYet.value)
                    .padding()
            }

            Spacer()
        }
    }
}

// #Preview {
//    CommentsView()
// }
