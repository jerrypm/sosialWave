//
//  HomeViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var profilePicture: URL = URL(string: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg")!
    
    func fetchPosts() {
        // dummy data
        
        let post1 = Post(
            id: "1",
            topic: "Makanan Enak",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
            category: "Kuliner",
            review: 5,
            comments: "Makanan di sini sungguh lezat!",
            createdBy: "JohnDoe",
            date: Date(),
            likes: ["user1", "user2"],
            numberOfComments: 2
        )
        
        let post2 = Post(
            id: "2",
            topic: "Liburan di Pantai",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
            category: "Liburan",
            review: 4,
            comments: "Pantainya indah sekali!",
            createdBy: "JaneSmith",
            date: Date(),
            likes: ["user3", "user4", "user5"],
            numberOfComments: 3
        )
        
        let post3 = Post(
            id: "3",
            topic: "Pemandangan Gunung",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
            category: "Wisata Alam",
            review: 4,
            comments: "Pemandangannya luar biasa!",
            createdBy: "AliceJohnson",
            date: Date(),
            likes: ["user1"],
            numberOfComments: 1
        )
        
        posts = [post1, post2, post3]
    }
}
