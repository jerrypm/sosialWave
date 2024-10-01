//
//  PostTextFieldView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 27/05/24.
//
import SwiftUI

struct PostTextFieldView: View {
    @Binding var text: String
    var placeholder: String
    var userImage: Image

    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1)
                .frame(height: 46)

            HStack {
                userImage
                    .resizable()
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                    .padding(.leading, 12)
                    .padding(.vertical, 10)

                ZStack(alignment: .leading) {
                    if text.isEmpty {
                        Text(placeholder)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 5)
                    }
                    TextEditor(text: $text)
                        .padding(.vertical, 8)
                        .padding(.trailing, 12)
                        .padding(.leading, 0)
                        .background(Color.clear)
                        .frame(height: 46)
                        .opacity(text.isEmpty ? 0.25 : 1)
                }
                .padding(.vertical, 8)
            }
        }
        .frame(height: 46)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    @State static var text = ""

    static var previews: some View {
        PostTextFieldView(text: $text, placeholder: "What do you want to post? ...", userImage: Image.profile)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
