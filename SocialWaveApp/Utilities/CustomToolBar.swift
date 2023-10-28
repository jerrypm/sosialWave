//
//  CustomToolBar.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct LogoToolbarImage: View {
    var body: some View {
        Image(SC.imageTitle.value)
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.screenWidth - 160, height: 40, alignment: .center)
            .padding(.bottom)
    }
    
}

struct LogoToolbarImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoToolbarImage()
    }
}
