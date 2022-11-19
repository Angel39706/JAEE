//
//  JAEEApp.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import SwiftUI

@main
struct JAEEApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup{
            JAEE().environmentObject(order)
        }
    }
}
