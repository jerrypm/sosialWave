//
//  UserDetailHeader.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import SwiftUI

struct UserHeaderView: View {
    // MARK: - PROPERTIES

    @AppStorage(SC.userID.value) var userID: String = .empty
    
    @State var userData: UserModel?
    @State private var isSheetPresented = false
    @State private var isBioExpanded: Bool = false
    @State private var showMoreButtonText: String = SC.showMore.value
    
    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center, spacing: 8) {
                ImageProfileView(imageProfileURL: userData?.profileImageUrl)
                    .padding(.vertical, 12)
                    .frame(width: 74, height: 74, alignment: .leading)
                
                Spacer()
                
                VStack(alignment: .center, content: {
                    Text("\(userData?.images?.count ?? .zero)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Text(SC.post.value)
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                })
                
                pipeView()
                
                VStack {
                    Text("\(userData?.following?.count ?? .zero)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Text(SC.following.value)
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                
                pipeView()
                
                VStack {
                    Text("\(userData?.followers?.count ?? .zero)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Text(SC.followers.value)
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
            .padding(.zero)
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack(spacing: 24) {
                Text(userData?.name ?? .empty)
                    .font(.rubik(size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                
                buttonsView()
            }
            
            getUserBioView()
        }
        .halfSheet(showSheet: $isSheetPresented, sheeView: {
        //            CommentsView(comments: post.comments)
        })
        
    }
    
    private func pipeView() -> some View {
        Text(String.pipe)
            .font(.system(size: 26))
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
    }
    
    private func buttonsView() -> some View {
        HStack(spacing: 8) {
            let isUser = userID == userData?.id
            FillButton(textButton: isUser ? SC.editProfile.value : SC.follow.value) {
                if isUser {
                    #warning("Go to edit profile")
                } else {
                    #warning("Action follow or unfolloe")
                }
                
                print("Tap action")
            }
            if isUser {
                FillImageButton(imageButton: Image.share) {
                    isSheetPresented.toggle()
                }
            } else {
                Spacer()
            }
        }
    }
    
    private func getUserBioView() -> some View {
        let bioText: String = userData?.bio ?? .empty
        let limitedBioText = isBioExpanded ? bioText : String(bioText.prefix(120))

        return Group {
            if bioText.count > 120 {
                Text("\(limitedBioText) \(SC.tripleDots.value)")
                    .foregroundColor(.white) +
                    Text(showMoreButtonText)
                    .underline()
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .bold()
            } else {
                Text(limitedBioText)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .multilineTextAlignment(.leading)
        .onTapGesture {
            withAnimation {
                showMoreButtonText = showMoreButtonText == SC.showMore.value ? SC.hide.rawValue : SC.showMore.value
                isBioExpanded.toggle()
            }
        }
    }
}

#Preview {
    UserHeaderView()
}
