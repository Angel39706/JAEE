//
//  Home.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = JAEEViewModel()
    
    var body: some View {
        ZStack{
            NavigationView {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(viewModel.jaees) { jaee in
                            JAEECell(jaee: jaee)
                                .onTapGesture {
                                    viewModel.selectedDetail = jaee
                                    viewModel.isShowingDetail = true
                                }
                        }
                        
                    }
                }
                .navigationTitle("JAEE ⚡️")
                
            }
            .task {
                viewModel.getJAEES()
            }
            if viewModel.isShowingDetail {
                JAEEDetailView(jaee: viewModel.selectedDetail!, isShowigDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
  
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
