//
//  JAEECell.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import SwiftUI

struct JAEECell: View {
    
    let jaee: JAEEjs
    
    var body: some View {
            VStack{
                AsyncImage(url: URL(string: jaee.imageURL)) { image in
                    image
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350,height: 350)
                } placeholder: {
                    Image(systemName: "exclamationmark.triangle")
                }
             VStack{
                    HStack{
                        Text(jaee.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("$\(jaee.price,specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding(.top)
                }
            }
        }
}

struct JAEECell_Previews: PreviewProvider {
    static var previews: some View {
        JAEECell(jaee: MockData.sampleJAEE)
    }
}
