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
                        
                        HStack(alignment: .top, spacing: 16) {
                            VStack {
                                Text("My posts")
                                    .font(Font.custom("Rubik", size: 16))
                                    .foregroundColor(.white)
                                Divider()
                                    .background(.white)
                            }
                            
                            Spacer()
                            
                            Text("Likes")
                                .font(Font.custom("Rubik", size: 16))
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("Bookmark")
                                .font(Font.custom("Rubik", size: 16))
                                .foregroundColor(.white)
                        }
                        .padding(4)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        
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
