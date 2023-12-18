//
//  ChatView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct ChatView: View {
    // MARK: - PROPERTIES

    @StateObject var viewModel = ChatViewModel()

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.chatTab.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(viewModel.sampleMessages, id: \.senderName) { message in
                            ChatViewChild(message: message)
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
