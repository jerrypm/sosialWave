//
//  RatingCircleView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 28/10/23.
//

import SwiftUI

struct RatingCircleView: View {
    
    @State var rating: Int
    @State var circleSize: CGFloat = 60.0
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: circleSize / 5)
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(Color(red: 229/255, green: 229/255, blue: 229/255))
            Circle()
                .trim(from: 0, to: animationAmount * rotationAngle() / 360)
                .stroke(lineWidth: circleSize / 5)
                .rotationEffect(.degrees(-90))
                .animation(.linear(duration: 0.8), value: animationAmount)
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(.blue)
            Text("\(rating)")
                .font(.system(size: 21, weight: .bold))
                .foregroundColor(.blue)
            VStack {
                Circle()
                    .frame(width: circleSize / 5, height: circleSize / 5)
                    .foregroundColor(.blue)
                Spacer()
                    .frame(height: circleSize)
            }
            VStack {
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
