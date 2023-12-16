//
//  ImageProfileView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import Kingfisher
import SwiftUI

struct ImageProfileView: View {
    // MARK: - PROPERTIES

    @State var imageProfileURL: String?

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 100, height: 100)
                .background(
                    KFImage(URL(string: imageProfileURL ?? .empty))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                )
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: -2)
                        .stroke(.white, lineWidth: 4)
                )
        }
        .padding(.vertical, 12)
        .frame(width: 110, height: 110, alignment: .center)
    }
}

struct ImageProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ImageProfileView()
    }
}
