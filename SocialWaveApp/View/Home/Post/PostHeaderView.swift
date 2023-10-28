//
//  PostHeaderView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 28/10/23.
//

import SwiftUI
import Kingfisher

struct PostHeaderView: View {
    @Binding var profilePicture: URL?
    @Binding var username: String?
    @State var postDate: Date?
    
    var body: some View {
        HStack(spacing: 12) {
            KFImage(profilePicture)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text(username ?? "")
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
            return ""
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM"
        return formatter.string(from: postDate)
    }
    
}


struct PostHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostHeaderView(profilePicture: .constant(URL(string: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg")!),
                       username: .constant("Tom Solley"),
                       postDate: Date())
    }
}
