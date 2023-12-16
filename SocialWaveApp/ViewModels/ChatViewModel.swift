//
//  ChatViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var sampleMessages: [Message] = [
        Message(senderName: "Kona", timestamp: Date(), messageText: "Hi Yuna, I had a great time at the dog park..."),
        Message(senderName: "Yuna", timestamp: Date(), messageText: "That's awesome! My dog had a great time too."),
        // Add more sample messages as needed
    ]

    init() {
        // here
    }
}
