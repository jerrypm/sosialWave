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
    @State var selected: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.primary.ignoresSafeArea()
            VStack {
                switch TabType(rawValue: selected) {
                case .home:
                    GeometryReader { _ in HomeView() }
                case .search:
                    GeometryReader { _ in SearchView() }
                case .chat:
                    GeometryReader { _ in ChatView() }
                default:
                    GeometryReader { _ in ProfileView() }
                }
                
            }
            .accentColor(.white)
            .onAppear {
                isShowTabBar = true
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            }
            
            if isShowTabBar {
                FloatingTabbar(selected: $selected)
                    .shadow(color: Color.shadow, radius: 2, x: 0, y: 2)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
