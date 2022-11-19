//
//  CheckOutButton.swift
//  JAEE
//
//  Created by Angel Martinez on 11/7/22.
//

import SwiftUI

struct CheckOutButton: View {
    let title: LocalizedStringKey
    var body: some View {
        HStack{
            Text(title)
        }
        .font(.title3)
        .fontWeight(.semibold)
        .frame(width: 260,height: 30)
        .foregroundColor(Color.black)
        .background(Color.brandPrimary)
        .cornerRadius(20)
    }
}

struct CheckOutButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutButton(title: "Testing")
    }
}
