//
//  ContentView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES

    @AppStorage(SC.userID.value) var userID: String = .empty
    @AppStorage(SC.isShowTabBar.value) var isShowTabBar: Bool = true
    @StateObject var homeViewModel = HomeViewModel(homePostsAPIService: HomePostsAPIService())
    @StateObject var searchViewModel = SearchViewModel(searchAPI: SearchAPIService())
    @State var selectedTab: Int = .zero

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.primary.ignoresSafeArea()
            VStack {
                switch TabType(rawValue: selectedTab) {
                case .home: HomeView()
                case .search: SearchView()
                case .chat: ChatView()
                default: ProfileView()
                }
            }
            .animation(nil, value: selectedTab)
            .accentColor(.white)
            .onAppear {
                userID = SC.appUserID.value
                isShowTabBar = true
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                homeViewModel.fetchPosts()
                searchViewModel.fetchSearch()
            }

            if isShowTabBar {
                FloatingTabbar(selected: $selectedTab)
                    .shadow(color: Color.shadow, radius: 2, x: 0, y: 2)
            }
        }
    }
}
