//
//  Image+Ext.swift
//  JAEE
//
//  Created by Angel Martinez on 11/4/22.
//

import SwiftUI

extension Image {
    func ProfileView() -> some View {
        self
            .resizable()
            .frame(width: 120, height: 120)
            .foregroundColor(Color.ProfileMock)
            .clipShape(Circle())
    }
}
