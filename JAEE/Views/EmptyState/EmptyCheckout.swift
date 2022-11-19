//
//  EmptyCheckout.swift
//  JAEE
//
//  Created by Angel Martinez on 11/12/22.
//

import SwiftUI

struct EmptyCheckout: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: "moon.stars")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                Text("Cart is Empty !")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyCheckout_Previews: PreviewProvider {
    static var previews: some View {
        EmptyCheckout()
    }
}
