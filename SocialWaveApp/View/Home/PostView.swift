//
//  PostView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    @State var post: Post
    
    @State var postingUser: QuickUser? = nil
    @State var username: String? = nil
    @State var profilePicURL: URL? = nil
    
    @State private var isLikedByUser: Bool = false
    @State private var likeCount: Int = 0
    
    var body: some View {
        VStack {
            
            // Header
            NavigationLink {
                // skip
            } label: {
                PostHeaderView(profilePicture: $profilePicURL, username: $username, postDate: post.date)
                    .padding(.bottom, 12)
            }
            
            // Body
            PostBodyView(stars: post.review,
                         topic: post.topic,
                         category: post.category,
                         comments: post.comments,
                         imageURL: URL(string: post.imageUrl ?? ""))
            .padding(.bottom, 12)
            
            
            
        }
        .padding(.vertical, 24)
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
//}

struct PostHeaderView: View {
    @Binding var profilePicture: URL?
    @Binding var username: String?
    @State var postDate: Date?
    
    var body: some View {
        HStack(spacing: 12) {
            KFImage(profilePicture)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text(username ?? "")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                Text(formatDate())
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
    
    private func formatDate() -> String {
        guard let postDate = postDate else {
            return ""
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM"
        return formatter.string(from: postDate)
    }
    
}


//struct PostHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostHeaderView(profilePicture: .constant(URL(string: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg")!),
//                       username: .constant("Tom Solley"),
//                       postDate: Date())
//    }
//}


struct PostBodyView: View {
    
    @State var stars: Int?
    @State var topic: String?
    @State var category: String?
    @State var comments: String?
    @State var imageURL: URL?
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 14)
            HStack(spacing: 22) {
                if let stars = stars {
                    Spacer() // idk why this needs to be here but it seems like it does
                        .frame(width: 0)
                    RatingCircleView(rating: stars)
                        .padding(.bottom, 8)
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text(topic ?? "")
                        .font(.system(size: 16, weight: .bold))
                    Spacer()
                        .frame(height: 3)
                    Text(category ?? "")
                        .font(.system(size: 14))
                        .foregroundColor(.blue)
                    Text(comments ?? "")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            if let imageURL = imageURL {
                KFImage(imageURL)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            } else {
                Spacer()
                    .frame(height: 6)
            }
        }
        .background(Color.white)
        .cornerRadius(12)
    }
}

struct PostBodyView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            PostBodyView(stars: 5,
                         topic: "Antonio's pizzeria",
                         category: "Food & Drink",
                         comments: "One of the better pizza spots around town",
                         imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg")!)
            .padding(.horizontal)
            .frame(width: UIScreen.main.bounds.width)
            Spacer()
        }
        .background(.gray)
    }
}


struct RatingCircleView: View {
    
    @State var rating: Int
    @State var circleSize: CGFloat = 60.0
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        ZStack {
            Circle() // gray background circle
                .stroke(lineWidth: circleSize / 5)
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(Color(red: 229/255, green: 229/255, blue: 229/255))
            Circle() // blue-filled arc
                .trim(from: 0, to: animationAmount * rotationAngle() / 360)
                .stroke(lineWidth: circleSize / 5)
                .rotationEffect(.degrees(-90))
                .animation(.linear(duration: 0.8), value: animationAmount)
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(.blue)
            Text("\(rating)")
                .font(.system(size: 21, weight: .bold))
                .foregroundColor(.blue)
            VStack { // rounds the start of the arc
                Circle()
                    .frame(width: circleSize / 5, height: circleSize / 5)
                    .foregroundColor(.blue)
                Spacer()
                    .frame(height: circleSize)
            }
            VStack { // star image
                ZStack {
                    Circle()
                        .frame(width: circleSize / 5, height: circleSize / 5)
                        .foregroundColor(.blue)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: circleSize / 8, height: circleSize / 8)
                        .foregroundColor(.white)
                }
                Spacer()
                    .frame(height: circleSize)
            }
            .rotationEffect(.degrees(rotationAngle()))
            .animation(.linear(duration: 0.8), value: animationAmount)
            .frame(width: 60, height: 60)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    animationAmount = 1
                }
                
            }
        }
    }
    
    private func rotationAngle() -> Double {
        return min(360.0 * Double(rating) * animationAmount / 5, 330)
    }
    
}

struct CommentsView: View {
    // MARK: BODY
    var body: some View {
        VStack {
        }
    }
    
}
