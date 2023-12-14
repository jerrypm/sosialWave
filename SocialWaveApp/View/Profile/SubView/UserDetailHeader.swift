//
//  UserDetailHeader.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import SwiftUI

struct UserDetailHeader: View {
    // MARK: - PROPERTIES
    @State var userData: User?
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 16) {
            Text(userData?.name ?? .empty)
                .font(.rubik(size: 24))
                .kerning(0.24)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .top)
            
            HStack(alignment: .center, spacing: 8) {
                
                Text(userData?.country ?? .empty)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text(String.pipe)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("\(userData?.following?.count ?? .zero) \(SC.following.value)")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text(String.pipe)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("\(userData?.followers?.count ?? .zero) \(SC.followers.value)")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            
            Text(userData?.bio ?? .empty)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }
    }
}

struct UserDetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailHeader()
    }
}
