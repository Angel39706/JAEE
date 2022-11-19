//
//  ATCButton.swift
//  JAEE
//
//  Created by Angel Martinez on 11/2/22.
//

import SwiftUI

struct ATCButton: View {
    var body: some View {
        HStack{
            Text("ADD TO CART")
            Image(systemName: "cart")
            
            
        }
        .font(.title3)
        .fontWeight(.semibold)
        .frame(width: 260,height: 30)
        .foregroundColor(Color.black)
        .background(Color.brandPrimary)
        .cornerRadius(20)
    }
}

struct ATCButton_Previews: PreviewProvider {
    static var previews: some View {
        ATCButton()
    }
}
