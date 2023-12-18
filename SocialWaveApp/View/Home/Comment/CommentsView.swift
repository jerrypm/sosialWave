//
//  CommentsView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 18/12/23.
//

import SwiftUI

struct CommentsView: View {
    let comments: [String] = [
        "Wow I know that food",
        "Amazing Shoot",
        "where was this taken?",
    ]
    
    var body: some View {
        VStack {
            // header
            HStack {
                Text("Comments")
                    .font(.headline)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                
                Spacer()
            }
            
            List(comments, id: \.self) { comment in
                CommentRow(comment: comment)
            }
        }
    }
}

struct CommentRow: View {
    let comment: String
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 20, height: 20)
                .clipShape(Circle())
                .padding()
            
            Text(comment)
                .lineLimit(nil)
            
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    CommentsView()
}
