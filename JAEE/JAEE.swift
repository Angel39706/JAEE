//
//  ContentView.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import SwiftUI

struct JAEE: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
            TabView{
                HomeView()
                    .tabItem{ Label("Home", systemImage:"house")}
                CheckoutView()
                    .tabItem{Label("Cart", systemImage:"bag")}
                    .badge(order.items.count)
                AccountView()
                    .tabItem{Label("Account", systemImage:"person.crop.circle")
                    }
            }
        }
}

struct JAEE_Previews: PreviewProvider {
    static var previews: some View {
        JAEE()
    }
}
