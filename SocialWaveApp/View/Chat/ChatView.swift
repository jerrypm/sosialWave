//
//  ChatView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct ChatView: View {
    
    let sampleMessages: [Message] = [
        Message(senderName: "Kona", timestamp: Date(), messageText: "Hi Yuna, I had a great time at the dog park..."),
        Message(senderName: "Yuna", timestamp: Date(), messageText: "That's awesome! My dog had a great time too."),
        // Add more sample messages as needed
    ]

    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.chatTab.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(sampleMessages, id: \.senderName) { message in
                            ChatViewLooping(message: message)
                        }
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(Color.primary)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}


struct ChatViewLooping: View {
    let message: Message
    
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
                        .font(Font.custom("Rubik", size: 16))
                        .foregroundColor(.white)
                    Spacer()
                    
                    Text("Now")
                        .font(Font.custom("Rubik", size: 14))
                        .kerning(0.14)
                        .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .bottom)
                
                // Body Copy
                Text(message.messageText)
                    .font(Font.custom("Rubik", size: 16))
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


struct Message {
    let senderName: String
    let timestamp: Date
    let messageText: String
}
