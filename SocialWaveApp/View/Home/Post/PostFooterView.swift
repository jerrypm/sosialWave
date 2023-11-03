//
//  PostFooterView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 01/11/23.
//

import SwiftUI

struct PostFooterView: View {
    
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
                    
                    Text("Like")
                }
                
                // Comments
                HStack(spacing: 8) {
                    Image.comment
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary)
                    
                    Text("Comments")
                }
                
                Spacer()
            }
            
            // Likes Count
            Text("\(2) like\("s")")
                .font(.footnote)
                .fontWeight(.light)
                .padding(.leading, 4)
        }
        .onAppear {
            print("👍Like Test VIEW: ???")
        }
        .padding(.horizontal, 10)
    }
}

struct PostFooterView_Previews: PreviewProvider {
    static var previews: some View {
        PostFooterView()
    }
}
