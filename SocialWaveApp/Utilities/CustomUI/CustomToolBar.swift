//
//  CustomToolBar.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

// MARK: - Image Tool Bar

struct LogoToolbarImage: View {
    // MARK: - BODY

    var body: some View {
        Image.imageTitle
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.screenWidth - 160, height: 40, alignment: .center)
            .padding(.bottom)
    }
}

// MARK: - Title Tool Bar

struct TitleToolBar: View {
    // MARK: - PROPERTIES

    @State var title: String

    // MARK: - BODY

    var body: some View {
        Text(title)
            .font(.system(size: 20))
            .fontWeight(.semibold)
            .foregroundColor(.white)
    }
}

struct LogoToolbarImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoToolbarImage()
    }
}
