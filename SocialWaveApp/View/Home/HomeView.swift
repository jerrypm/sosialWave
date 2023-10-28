//
//  HomeView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(viewModel.posts) { post in
                        PostView(post: post, profilePicURL: viewModel.profilePicture)
                        
//                        VStack(alignment: .leading) {
//                            Text(post.topic ?? .empty)
//                                .font(.headline)
//                            Text(post.category ?? .empty)
//                                .font(.subheadline)
//                                .foregroundColor(.gray)
//                            AsyncImage(url: URL(string: post.imageUrl ?? .empty)) { image in
//                                image
//                                    .resizable()
//                                    .scaledToFit()
//                                    .cornerRadius(10)
//
//                            } placeholder: {
//                                Image.newspaper
//                                    .resizable()
//                                    .frame(width: 100, height: 100  , alignment: .center)
//                                    .padding()
//                                    .opacity(0.2)
//                            }
//                            Text(post.comments ?? .empty)
//                            Divider()
//                        }
                        .padding(.bottom)
                    }
                }
                .padding()
                
                Spacer(minLength: 100)
            }
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.primary)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    LogoToolbarImage()
                }
            }
            .onAppear {
                viewModel.fetchPosts()
            }
        }
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
}
