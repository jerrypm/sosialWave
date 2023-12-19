//
//  ChatView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct ChatView: View {
    // MARK: - PROPERTIES

    @StateObject var viewModel = ChatViewModel(chatAPI: ChatAPIService())

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.messages.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(viewModel.messages, id: \.id) { message in
                            ChatViewChild(message: message)
                            Divider()
                                .background(Color.white.opacity(0.5))
                        }
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .padding()
            .background(Color.primary)
            .onAppear(perform: viewModel.featchChats)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
