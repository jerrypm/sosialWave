//
//  ChatViewChild.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import Kingfisher
import SwiftUI

struct ChatViewChild: View {
    // MARK: - PROPERTIES

    let message: ChatModel

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            HStack(alignment: .center, spacing: 0) {
                KFImage(URL(string: message.profilePicture))
                    .resizable()
                    .placeholder {
                        ZStack {
                            Image.photo
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .opacity(0.3)

                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle())
                                .scaleEffect(2)
                        }
                    }
                    .scaledToFill()
                    .frame(width: 44, height: 44)
                    .cornerRadius(20)
            }
            .frame(width: 32, height: 32, alignment: .center)

            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .bottom) {
                    Text(message.user)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Spacer()

                    Text(SC.now.value)
                        .font(.rubik(size: 12))
                        .kerning(0.14)
                        .foregroundColor(.white)
                }
                .padding(.zero)
                .frame(maxWidth: .infinity, alignment: .bottom)

                // Body
                Text(message.lastMessage)
                    .font(.rubik(size: 16))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(16)
        .frame(alignment: .topLeading)
    }
}
