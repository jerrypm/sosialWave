//
//  ChatView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 0) {
                  Text("ChatView")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.primary)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
