//
//  CategoryView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 01/11/23.
//

import SwiftUI

struct CategoryView: View {
    //MARK: - PROPERTIES
    @State var category: Categories
    
    //MARK: - BODY
    var body: some View {
        HStack {
            category.icon()
                .foregroundColor(.primary)
                
            Text(category.name())
                .foregroundColor(.primary)
        }
        .padding(10)
        .background(Color.secondary)
        .cornerRadius(10)
    }
}

//struct CategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryView()
//    }
//}
