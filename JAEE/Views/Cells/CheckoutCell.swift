//
//  CheckoutCell.swift
//  JAEE
//
//  Created by Angel Martinez on 11/10/22.
//

import SwiftUI

struct CheckoutCell: View {
    let jaee: JAEEjs
    var body: some View {
        HStack{
            JAEERemoteImage(urlString: jaee.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 90,height: 90)
                .cornerRadius(8)
            
        VStack{
                    Text(jaee.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("$\(jaee.price,specifier: "%.2f")")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }
                .padding(.leading)
            
        }
    }
}

struct CheckoutCell_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutCell(jaee: MockData.sampleJAEE)
    }
}
