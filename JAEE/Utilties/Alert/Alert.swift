//
//  Alert.swift
//  JAEE
//
//  Created by Angel Martinez on 10/26/22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: -Network Alert
    static let invalidData      = AlertItem(title: Text("Server Error"), message: Text("The data was not received from the server"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse  = AlertItem(title:Text("Server Error"), message: Text("Invalid response from the server"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"), message: Text("There is an issue with connecting to the server"), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unstable Network Connection"), dismissButton: .default(Text("Ok")))
    
    
    //MARK: -Account Alert
    static let invalidForm      = AlertItem(title: Text("Invalid Form"), message: Text("Please complete all empty fields"), dismissButton: .default(Text("Ok")))
    
    static let invalidEmail     = AlertItem(title:Text("Invalid Email"), message: Text("Please ensure your email is correct"), dismissButton: .default(Text("Ok")))
    
    static let userSaveSucces   = AlertItem(title:Text("Profiles Saved"), message: Text("Profile succesfully updated"), dismissButton: .default(Text("Ok")))
    
    static let invalidUserData  = AlertItem(title:Text("Profile Error"), message: Text("Could not save or retreive your profile please try again later"), dismissButton: .default(Text("Ok")))
}

