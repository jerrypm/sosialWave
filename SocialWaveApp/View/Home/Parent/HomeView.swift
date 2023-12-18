//
//  HomeView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES

    @StateObject var viewModel = HomeViewModel(homePostsAPIService: HomePostsAPIService())

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                LogoToolbarImage()

                ScrollView(showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 14) {
                            ForEach(self.viewModel.categories, id: \.self) { category in
                                CategoryView(category: category)
                            }
                        }
                        .padding(.horizontal)
                    }
                    LazyVStack(spacing: 0) {
                        ForEach(self.viewModel.posts) { post in
                            PostView(
                                post: post,
                                username: self.viewModel.username
                            )
                            .padding(.bottom)
                        }
                    }
                    .padding()

                    Spacer(minLength: 100)
                }
                .navigationBarTitleDisplayMode(.inline)
                .background(Color.primary)
                .onAppear {
                    self.viewModel.fetchPosts()
                }
            }
            .background(Color.primary)
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
