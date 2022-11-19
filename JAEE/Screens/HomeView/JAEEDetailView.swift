//
//  JAEEDetailView.swift
//  JAEE
//
//  Created by Angel Martinez on 11/1/22.
//

import SwiftUI

struct JAEEDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let jaee: JAEEjs
    @Binding var isShowigDetail: Bool
    
    var body: some View {
        NavigationView {
            VStack(spacing:50){
            ScrollView(.horizontal,showsIndicators: false){
                JAEERemoteImage(urlString: jaee.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 300)
                    .padding()
            }
            
            VStack{
                HStack(spacing:190){
                    Text(jaee.name)
                        .font(.title2)
                        .foregroundColor(.secondary)
                    
                    Text("$\(jaee.price,specifier: "%.2f")")
                        .fontWeight(.semibold)
                        .italic()
                }
                
                HStack(spacing:150){
                    Text("Select Size")
                        .font(.system(size:18))
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    
                    Button{
                        print("tapped")
                    } label: {
                        SizeButton()
                    }
                    
                }
                Text(jaee.description)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    .padding()
                    .frame(width: 250, height: 100)
            }
            
            Button{
                order.add(jaee)
                isShowigDetail = false
            } label: {
                ATCButton()
                }
            }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    isShowigDetail = false
                }, label: {
                    Image(systemName: "arrow.left")
                })
            }
          }
        }
    }
  }

struct JAEEDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JAEEDetailView(jaee: MockData.sampleJAEE,
                       isShowigDetail: .constant(true))
    }
}
