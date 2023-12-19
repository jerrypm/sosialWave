//
//  HomeViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    @Published var categories: [Categories] = [
        Categories.trending,
        Categories.entertainment,
        Categories.music,
        Categories.event,
        Categories.place,
        Categories.food
    ]
    
    private let homePostsAPIService: IHomePostsAPIService
    
    init(homePostsAPIService: IHomePostsAPIService) {
        self.homePostsAPIService = homePostsAPIService
    }
    
    func fetchPosts() {
        homePostsAPIService.getHomePosts { [weak self] response in
            guard let self = self else { return }
            let postsData = response["data"].arrayValue
            let newPosts = postsData.compactMap { post in
                PostModel(data: post)
            }
            
            self.posts.append(contentsOf: newPosts)
            
        } failed: { message in
            print("Error \(message)")
        }
    }
}
