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
    @State private var heartSize: CGFloat = .zero
    @State private var showLikeAnimation: Bool = false
    @State private var scrollViewOffset: CGFloat = .zero
    @State private var startOffset: CGFloat = .zero
    @State private var selectedCategory: Categories = .trending
    @State private var searchText: String = .empty

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    CustomNavigationView(searchText: $searchText)
                    
                    ScrollViewReader { proxyReader in
                        ScrollView(showsIndicators: false) {
                            HorizontalCategoryScroll(proxyReader: proxyReader)
                            postListView()

                            Spacer(minLength: 100)
                        }
                        .navigationBarTitleDisplayMode(.inline)
                        .background(Color.backgroundNeutral)
                        .onAppear(perform: viewModel.fetchPosts)
                        .overlay {
                            ScrollToTopButtonOverlay(
                                scrollViewOffset: scrollViewOffset,
                                proxyReader: proxyReader
                            )
                        }
                    }
                }

                if self.showLikeAnimation {
                    self.likePost()
                }
            }
            .background(Color.backgroundNeutral)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    // MARK: Segment scroll horizontal

    private func HorizontalCategoryScroll(proxyReader: ScrollViewProxy) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8) {
                ForEach(self.viewModel.categories, id: \.self) { category in
                    CategoryView(category: category, isSelected: selectedCategory == category)
                        .id(category)
                        .onTapGesture {
                            withAnimation {
                                selectedCategory = category
                                proxyReader.scrollTo(category, anchor: .center)
                            }
                        }
                }
            }
            .padding(.horizontal)
            .scaleEffect(0.98)
        }
        .id(SC.scrollID.value)
    }

    // MARK: Post List View

    private func postListView() -> some View {
        LazyVStack(spacing: 0) {
            ForEach(viewModel.posts) { post in
                PostView(
                    post: post,
                    onTapAction: {
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
                    if startOffset == .zero {
                        self.startOffset = proxy.frame(in: .global).minY
                    }

                    let offset = proxy.frame(in: .global).minY
                    scrollViewOffset = offset - startOffset
                }

                return Color.clear
            }
            .frame(width: .zero, height: .zero)
        }
    }

    // MARK: Like post UI

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
                        self.heartSize = .zero
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

    func updateUIViewController(_ viewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let controller = viewController.navigationController {
            configure(controller)
        }
    }
}
