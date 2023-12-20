//
//  ProfileView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import Kingfisher
import SwiftUI

struct ProfileView: View {
    // MARK: - PROPERTIES

    @StateObject var viewModel = ProfileViewModel(profileAPI: ProfileAPIService())
    @State private var selectedTab: Int = .zero
    @State var tabIndex: Int = .zero

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.profileTab.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 16) {
                        UserHeaderView(userData: viewModel.userData)
                        Divider()
                            .background(Color.secondary)

                        // Custom Top TabBar
                        CustomTopTabBar(tabIndex: $tabIndex)
                        if tabIndex == .zero {
                            UserPostView(images: viewModel.userData?.images ?? [.empty])
                        } else {
                            UserLikesView(likedUsers: viewModel.userData?.userLikes)
                        }
                        Spacer(minLength: 64)
                    }
                    .padding(.horizontal, 16)
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .padding()
            .background(Color.primary)
            .onAppear(perform: viewModel.fetchProfile)
        }
    }
}

#Preview {
    ProfileView()
}
