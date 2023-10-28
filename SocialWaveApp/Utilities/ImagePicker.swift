//
//  ImagePicker.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

struct ImagePicker : UIViewControllerRepresentable {
    
    class Coordinator : NSObject , UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent : ImagePicker
            
        init(_ parent : ImagePicker){
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiimage = info[.editedImage] as? UIImage{
                parent.image = uiimage
            }
            else if let uiimage = info[.originalImage] as? UIImage{
                parent.image = uiimage
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var image : UIImage?
    @State var source : UIImagePickerController.SourceType
    var allowsEditing: Bool = true
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = source
        picker.allowsEditing = self.allowsEditing
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
}

