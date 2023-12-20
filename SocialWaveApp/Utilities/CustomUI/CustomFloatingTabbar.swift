//
//  FloatingTabbar.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

struct FloatingTabbar: View {
    // MARK: - PROPERTIES

    @Binding var selected: Int

    // MARK: - BODY

    var body: some View {
        HStack {
            //: Home
            Button {
                selected = .zero
            } label: {
                Image.home.foregroundColor(selected == .zero ? .primary : .gray)
                Text(selected == .zero ? SC.homeTab.value : .empty)
                    .foregroundColor(selected == .zero ? .primary : .gray)
            }
            Spacer(minLength: 15)

            //: Search
            Button {
                selected = 1
            } label: {
                Image.search.foregroundColor(selected == 1 ? .primary : .gray)
                Text(selected == 1 ? SC.searchTab.value : .empty)
                    .foregroundColor(selected == 1 ? .primary : .gray)
            }
            Spacer(minLength: 15)

            //: Chat
            Button {
                selected = 2
            } label: {
                Image.chat.foregroundColor(selected == 2 ? .primary : .gray)
                Text(selected == 2 ? SC.chatTab.value : .empty)
                    .foregroundColor(selected == 2 ? .primary : .gray)
            }
            Spacer(minLength: 15)

            //: Profile
            Button {
                selected = 3
            } label: {
                Image.profile.foregroundColor(selected == 3 ? .primary : .gray)
                Text(selected == 3 ? SC.profileTab.value : .empty)
                    .foregroundColor(selected == 3 ? .primary : .gray)
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 35)
        .background(Color.secondary)
        .clipShape(Capsule())
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.primary, lineWidth: 1)
                .opacity(0.5)
        )
        .padding()
    }
}
