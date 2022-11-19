//
//  ImageSelector.swift
//  JAEE
//
//  Created by Angel Martinez on 11/4/22.
//


import SwiftUI
import UIKit


struct ImageSelector: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) private var presentationMode
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImageSelector>) -> UIImagePickerController {
        
        let imageSelector = UIImagePickerController()
        imageSelector.allowsEditing = false
        imageSelector.sourceType = sourceType
        imageSelector.delegate = context.coordinator
        
        return imageSelector
        
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
     
        var parent: ImageSelector
     
        init(_ parent: ImageSelector) {
            self.parent = parent
        }
        
    
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = image
            }
     
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
}
