//
//  UserDetailHeader.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import SwiftUI

struct UserDetailHeader: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 16) {
            Text("Ley Clu")
                .font(Font.custom("Rubik", size: 24))
                .kerning(0.24)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .top)
            
            HStack(alignment: .center, spacing: 8) {
                
                Text("San Francisco")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("|")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("184 following")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("|")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("611 followers")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            
            Text("My name is Yuna, and I’m a 4 year old Shiba Inu. I’m currently travelling the world! Follow me on Petma")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }
    }
}

struct UserDetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailHeader()
    }
}
