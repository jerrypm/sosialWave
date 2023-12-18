//
//  PostHeaderView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 28/10/23.
//

import Kingfisher
import SwiftUI

struct PostHeaderView: View {
    // MARK: - PROPERTIES

    @Binding var profilePicture: String?
    @Binding var username: String?
    @State var postDate: Date?

    // MARK: - BODY

    var body: some View {
        HStack(spacing: 12) {
            KFImage(URL(string: profilePicture ?? .empty))
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text(username ?? .empty)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                Text(formatDate())
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }

    private func formatDate() -> String {
        guard let postDate = postDate else {
            return .empty
        }
        let formatter = DateFormatter()
        formatter.dateFormat = SC.datePostFormat.value
        return formatter.string(from: postDate)
    }
}

struct PostHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostHeaderView(profilePicture: .constant( "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
                       username: .constant("Tom Solley"),
                       postDate: Date())
    }
}
