//
//  AccountViewModel.swift
//  JAEE
//  Adopted from Sean Allen course
//  Created by Angel Martinez on 11/4/22.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
   
   @AppStorage("user") private var userData: Data?
   @Published var user = User()
   @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return}
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSucces
        }catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userData else {return}
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch{
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard !user.fullName.isEmpty && !user.email.isEmpty && !user.phone.isEmpty && !user.address.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
            
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
  
}
