//
//  ProfileImageButton.swift
//  JAEE
//
//  Created by Angel Martinez on 11/4/22.
//

import SwiftUI

struct ProfileImageButton: View {
    
    @State var changeProfileImage = false
    @State var AccessCameraRoll   = false
    @State var selectedImage      = UIImage()
    
    var body: some View {
        ZStack{
            Button(action: {
                changeProfileImage = true
                AccessCameraRoll   = true
                
            }, label: {
                if changeProfileImage {
                    Image(uiImage: selectedImage)
                        .ProfileView()
                } else {
                    Image(systemName: "person.crop.circle.fill")
                        .ProfileView()
                }
                
            })
            
        } .sheet(isPresented: $AccessCameraRoll) {
            ImageSelector(selectedImage: $selectedImage, sourceType: .photoLibrary)
        }
    }
}

struct ProfileImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageButton()
    }
}
