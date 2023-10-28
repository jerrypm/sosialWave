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
