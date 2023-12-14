//
//  ChatViewChild.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import SwiftUI

struct ChatViewChild: View {
    // MARK: - PROPERTIES
    let message: Message
    
    // MARK: - BODY
    var body: some View {
        
        HStack(alignment: .top, spacing: 12) {
            HStack(alignment: .center, spacing: 0) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 24, height: 24)
                    .background(
                        Image.share
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                            .clipped()
                    )
                    .background(
                        Image("PATH_TO_IMAGE")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                            .clipped()
                    )
                    .background(
                        Image("PATH_TO_IMAGE")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                            .clipped()
                    )
                    .cornerRadius(24)
            }
            .padding(0)
            .frame(width: 24, height: 24, alignment: .center)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .bottom) {
                    
                    Text(message.senderName)
                        .font(.rubik(size: 16))
                        .foregroundColor(.white)
                    Spacer()
                    
                    Text("Now")
                        .font(.rubik(size: 14))
                        .kerning(0.14)
                        .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .bottom)
                
                // Body Copy
                Text(message.messageText)
                    .font(.rubik(size: 16))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(16)
        .frame(width: 411, alignment: .topLeading)
        .background(Color.primary)
    }
    
}
