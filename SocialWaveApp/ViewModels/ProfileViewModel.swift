//
//  ProfileViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import SwiftUI

struct ImageModel {
    let imageUrl: String
}

class ProfileViewModel: ObservableObject {
    @Published var username: String = "The Rock"
    @Published var storiesData = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    @Published var userImageURL = "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"
    @Published var userData: User?
    
    let dummyImages: [ImageModel] = [
        ImageModel(imageUrl: "https://www.researchgate.net/profile/Peter-Siemund/publication/329755169/figure/fig1/AS:769346448130048@1560437895151/Written-task-in-English-Picture-story-Gut-gemeint-English-translation-Good.png"),
        ImageModel(imageUrl: "https://buffer.com/library/content/images/2023/10/free-images.jpg"),
        ImageModel(imageUrl: "https://img.freepik.com/premium-photo/young-girl-holding-film-camera-with-beautiful-zinnia-blooming-field-background-vacation-time_26077-225.jpg"),
        ImageModel(imageUrl: "https://t3.ftcdn.net/jpg/06/49/51/82/360_F_649518247_J27irz9TezhqqHS6EpF0AQY7bFdVAIn8.jpg"),
        ImageModel(imageUrl: "https://blog.snappa.com/wp-content/uploads/2022/02/Reshot-example-image.jpg"),
        ImageModel(imageUrl: "https://raw.githubusercontent.com/jerrypm/nextproject/master/wallpaper01_low.jpg"),
        ImageModel(imageUrl: "https://raw.githubusercontent.com/jerrypm/nextproject/master/wallpaper02_low.jpg"),
        ImageModel(imageUrl: "https://raw.githubusercontent.com/jerrypm/nextproject/master/wallpaper03.jpg"),
        ImageModel(imageUrl: "https://raw.githubusercontent.com/jerrypm/nextproject/master/wallpaper04.jpg")
    ]
    
    init() {
        userData = User(
            id: "1212",
            name: "Dr. Jhon",
            username: "",
            email: "jhondoe@gmail.com",
            country: "Singapore", 
            bio: "Dr. Jhon Smith is a passionate biomedical scientist with over 15 years of experience in molecular biology and genetics research. He is committed to advancing the field of medical science through innovative research and collaboration. Dr. Smith is an advocate for public science education and regularly participates in community outreach programs.",
            following: ["ali", "lima", "erik"],
            followers: ["erik", "nita"]
        )
    }
}

