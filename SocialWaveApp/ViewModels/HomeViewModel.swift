//
//  HomeViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var profilePicture: URL = .init(string: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg")!
    @Published var username: String = "The Rock"
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
                Post(data: post)
            }
            
            self.posts.append(contentsOf: newPosts)
            
        } failed: { message in
            print("Error \(message)")
        }
    }
}
