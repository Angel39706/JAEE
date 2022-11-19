//
//  JAEEEViewModel.swift
//  JAEE
//
//  Created by Angel Martinez on 10/26/22.
//

import SwiftUI

@MainActor final class JAEEViewModel :ObservableObject {
    
    @Published var jaees: [JAEEjs] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedDetail: JAEEjs?
    
    func getJAEES() {
        isLoading = true
        
        Task{
            do{
                jaees = try await NetworkManager.shared.getJAEE()
                isLoading = false
            } catch{
                if let jError = error as? JERROR {
                    switch jError{
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
        
    }
}
