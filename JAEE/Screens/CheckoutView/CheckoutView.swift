//
//  CheckoutView.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    List{
                        ForEach(order.items) { jaee in
                            CheckoutCell(jaee: jaee)
                                .listRowSeparator(.hidden)
                        }
                        .onDelete(perform: order.deletItems)
                    }
                    .listStyle(PlainListStyle())
                    Button{
                        print("order placed")
                    } label: {
                        CheckOutButton(title: "$\(order.totalPrice, specifier: "%.2f") Place Order")
                    }
                    .padding(.bottom)
                }
                if order.items.isEmpty {
                    EmptyCheckout()
                }
            }
            
            .navigationTitle("🛒")
        }
    }
   
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
