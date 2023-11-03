//
//  ProfileView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct ProfileView: View {
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.profileTab.value)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 16) {
                        HStack(alignment: .center, spacing: 0) {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 100, height: 100)
                              .background(
                                Image("PATH_TO_IMAGE")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 100, height: 100)
                                  .clipped()
                              )
                              .background(
                                Image("PATH_TO_IMAGE")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 100, height: 100)
                                  .clipped()
                              )
                              .cornerRadius(100)
                              .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                  .inset(by: -2)
                                  .stroke(.white, lineWidth: 4)
                              )
                        }
                        .padding(.vertical, 12)
                        .frame(width: 110, height: 110, alignment: .center)
                        
                        Text("Yuna Lu")
                            .font(Font.custom("Rubik", size: 24))
                            .kerning(0.24)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .top)
                        
                        HStack(alignment: .center, spacing: 16) {
                            
                            Text("San Francisco")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                            
                            Text("184 following")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                            
                            Text("611 followers")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("My name is Yuna, and I’m a 4 year old Shiba Inu. I’m currently travelling the world! Follow me on Petma @spicy_yuna_roll!\n初めまして、ユナです。四年歳柴犬。世界の犬！")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                        
                        HStack(alignment: .top, spacing: 16) {
                            Text("My posts")
                                .font(Font.custom("Rubik", size: 16))
                                .foregroundColor(.white)
                            
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
                        
                        VStack(spacing: 0) {
                            HStack(spacing: 0) {
                                CardView()
                                CardView()
                                CardView()
                            }
                            HStack(spacing: 0) {
                                CardView()
                                CardView()
                                CardView()
                            }
                            HStack(spacing: 0) {
                                CardView()
                                CardView()
                                CardView()
                            }
                        }
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

struct CardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .frame(width: 100, height: 150)
            .padding(10)
    }
}
