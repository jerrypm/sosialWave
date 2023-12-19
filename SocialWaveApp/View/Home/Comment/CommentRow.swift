//
//  CommentRow.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 18/12/23.
//

import Kingfisher
import SwiftUI

struct CommentRow: View {
    // MARK: - PROPERTIES

    let username: String
    let comment: String
    let profileImage: String

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            KFImage(URL(string: profileImage))
                .resizable()
                .placeholder { _ in
                    Image.personCircle
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        .padding()
                }
                .scaledToFill()
                .frame(width: 25, height: 25)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))

            VStack(alignment: .leading, spacing: 4) {
                Text(username)
                    .font(.headline)
                    .foregroundColor(.primary)

                Text(comment)
                    .font(.body)
                    .foregroundColor(.textPrimary)
                    .lineLimit(nil)
            }

            Spacer()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    CommentRow(username: .empty, comment: .empty, profileImage: .empty)
}
