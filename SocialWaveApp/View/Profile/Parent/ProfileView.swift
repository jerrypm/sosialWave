//
//  ProfileView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    // MARK: - PROPERTIES
    @StateObject var viewModel = ProfileViewModel()
    @State private var selectedTab = 0
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.profileTab.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 16) {
                        
                        //Image Profile
                        ImageProfileView(imageProfileURL: viewModel.userImageURL)
                            .padding(.vertical, 12)
                            .frame(width: 110, height: 110, alignment: .center)
                        
                        //User Header
                        UserDetailHeader()
                        
                        TabView(selection: $selectedTab) {
                            Text("My Posts")
                                .tag(0)
                                .tabItem {
                                    Label("My Posts", systemImage: "square.grid.2x2.fill")
                                }
                                .foregroundColor(.white)
                            
                            Text("Likes")
                                .tag(1)
                                .tabItem {
                                    Label("Likes", systemImage: "heart.fill")
                                }
                                .foregroundColor(.white)
                            
                            Text("Bookmark")
                                .tag(2)
                                .tabItem {
                                    Label("Bookmark", systemImage: "bookmark.fill")
                                }
                                .foregroundColor(.white)
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        .background(.white)
                        .padding(4)
                        
                        //Looping Image List
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(viewModel.dummyImages, id: \.imageUrl) { image in
                                CardView(imageURL: image.imageUrl)
                            }
                        }
                        .padding()
                        
                        Spacer(minLength: 64)
                    }
                    .padding(.horizontal)
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
