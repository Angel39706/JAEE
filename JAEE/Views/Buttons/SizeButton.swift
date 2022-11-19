//
//  SizeButton.swift
//  JAEE
//
//  Created by Angel Martinez on 11/2/22.
//

import SwiftUI

struct SizeButton: View {
    
    var body: some View {
        Text("S")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 40,height: 40)
            .foregroundColor(Color.sizePrimary)
    }
}

struct SizeButton_Previews: PreviewProvider {
    static var previews: some View {
        SizeButton()
    }
}
