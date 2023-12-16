//
//  ContentView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES

    @AppStorage(SC.isShowTabBar.value) var isShowTabBar: Bool = true
    @State var selectedTab: Int = 0

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
                isShowTabBar = true
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            }

            if isShowTabBar {
                FloatingTabbar(selected: $selectedTab)
                    .shadow(color: Color.shadow, radius: 2, x: 0, y: 2)
            }
        }
    }
}
