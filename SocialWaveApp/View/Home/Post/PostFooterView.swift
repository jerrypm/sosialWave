//
//  PostFooterView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 01/11/23.
//

import SwiftUI

struct PostFooterView: View {
    // MARK: - PROPERTIES

    @State private var isSheetPresented = false
    @State var post: PostModel
    var onTapAction: () -> Void
    
    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                // Like button
                HStack(spacing: 8) {
                    Image.heart
                        .resizable()
                        .frame(width: 20, height: 18)
                        .foregroundColor(.red)
                    
                    Text(SC.like.value)
                }
                .onTapGesture {
                    onTapAction()
                }
                
                // Comments
                HStack(spacing: 8) {
                    Image.comment
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary)
                    
                    Text(SC.comments.value)
                }
                .onTapGesture {
                    isSheetPresented = true
                }
                
                Spacer()
            }
            
            likeText(post.likes?.count ?? .zero)
        }
        .padding(.horizontal, 10)
        .halfSheet(showSheet: $isSheetPresented, sheeView: {
            CommentsView(comments: post.comments)
        })
    }
    
    // Likes Count
    func likeText(_ likesCount: Int) -> some View {
        let moreThanOne = likesCount <= 1 ? String.empty : String.charS
        return Text("\(likesCount) \(SC.like.value)\(moreThanOne)")
            .font(.footnote)
            .fontWeight(.light)
            .padding(.leading, 4)
    }
}
