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
    
    func fetchPosts() {
        // dummy data
        
        let post1 = Post(
            id: "1",
            topic: "Good food",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
            category: Categories.food.name(),
            review: 5,
            comments: "I like this food!, I Want more like this, More and more, Can I Buy this cafe",
            createdBy: "JohnDoe",
            date: Date(),
            likes: ["user1", "user2"],
            numberOfComments: 2
        )
        
        let post2 = Post(
            id: "2",
            topic: "Vacation in Sea",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
            category: Categories.place.name(),
            review: 4,
            comments: "With Shark, Wow!",
            createdBy: "JaneSmith",
            date: Date(),
            likes: ["user3", "user4", "user5"],
            numberOfComments: 3
        )
        
        let post3 = Post(
            id: "3",
            topic: "Music Studio",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
            category: Categories.music.name(),
            review: 4,
            comments: "Good Music!",
            createdBy: "AliceJohnson",
            date: Date(),
            likes: ["user1"],
            numberOfComments: 1
        )
        
        posts = [post1, post2, post3]
    }
}
