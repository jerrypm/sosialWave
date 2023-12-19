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

    @StateObject var viewModel = ProfileViewModel()
    @State private var selectedTab = 0
    @State var tabIndex = 0

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.profileTab.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 16) {
                        // Image Profile
                        ImageProfileView(imageProfileURL: viewModel.userImageURL)
                            .padding(.vertical, 12)
                            .frame(width: 110, height: 110, alignment: .center)

                        // User Header
                        UserHeaderView(userData: viewModel.userData)

                        // Custom Top TabBar
                        CustomTopTabBar(tabIndex: $tabIndex)
                        if tabIndex == 0 {
                            UserPostView(dummyImages: viewModel.dummyImages)
                        } else {
                            UserLikesView()
                        }
                        Spacer(minLength: 64)
                    }
                    .padding(.horizontal, 16)
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(Color.primary)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
