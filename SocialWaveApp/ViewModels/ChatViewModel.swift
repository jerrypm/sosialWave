//
//  ChatViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages: [ChatModel] = []
    private let chatAPIService: IChatAPIService

    init(chatAPI: IChatAPIService) {
        chatAPIService = chatAPI
    }

    func featchChats() {
        chatAPIService.getListChats { [weak self] response in
            guard let self = self else { return }
            let chatsData = response["chats"].arrayValue
            self.messages = chatsData.compactMap { item in
                ChatModel(data: item)
            }

        } failed: { message in
            print("Error \(message)")
        }
    }
}
