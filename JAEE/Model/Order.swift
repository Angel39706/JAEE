//
//  Order.swift
//  JAEE
//
//  Created by Angel Martinez on 11/12/22.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [JAEEjs] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ jaee: JAEEjs) {
        items.append(jaee)
    }
    
    func deletItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
