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
    @State private var heartSize: CGFloat = 0
    @State private var showLikeAnimation: Bool = false

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    LogoToolbarImage()
                    ScrollViewReader { proxyReader in

                        ScrollView(showsIndicators: false) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 14) {
                                    ForEach(self.viewModel.categories, id: \.self) { category in
                                        CategoryView(category: category)
                                    }
                                }
                                .padding(.horizontal)
                            }
                            .id(SC.scrollID.value)

                            LazyVStack(spacing: 0) {
                                ForEach(self.viewModel.posts) { post in
                                    PostView(
                                        post: post,
                                        onTap: {
                                            self.showLikeAnimation.toggle()
                                        }
                                    )
                                    .padding(.bottom)
                                }
                            }
                            .padding()
                            .overlay {
                                GeometryReader { proxy -> Color in
                                    DispatchQueue.main.async {
                                        if startOffset == 0 {
                                            self.startOffset = proxy.frame(in: .global).minY
                                        }

                                        let offset = proxy.frame(in: .global).minY
                                        scrollViewOffset = offset - startOffset
                                    }

                                    return Color.clear
                                }
                                .frame(width: 0, height: 0)
                            }

                            Spacer(minLength: 100)
                        }
                        .navigationBarTitleDisplayMode(.inline)
                        .background(Color.primary)
                        .onAppear(perform: viewModel.fetchPosts)
                        .overlay {
                            if scrollViewOffset < -500 {
                                ScrollToTopButton {
                                    withAnimation(.spring()) {
                                        proxyReader.scrollTo(SC.scrollID.value, anchor: .top)
                                    }
                                }
                                .offset(
                                    x: UIScreen.main.bounds.width / 2 - 50,
                                    y: UIScreen.main.bounds.height / 2 - 200
                                )
                                .frame(width: 20, height: 20)
                            }
                        }
                    }
                }

                if self.showLikeAnimation {
                    self.likePost()
                }
            }
            .background(Color.primary)
        }
    }

    private func likePost() -> some View {
        Image.heartFill
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .scaleEffect(heartSize)
            .onAppear {
                withAnimation(.easeIn(duration: 0.3)) {
                    self.heartSize = 1.5
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(.easeOut(duration: 0.3)) {
                        self.heartSize = 0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        showLikeAnimation = false
                    }
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
            configure(nc)
        }
    }
}
