//
//  Account.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case fullName, phone, email, address
    }
    
    var body: some View {
        NavigationView {
            VStack{
                ProfileImageButton()
                    .padding()
                Form {
                    Section(header: Text("Personal Info"))
                    {
                        TextField("Full Name", text: $viewModel.user.fullName)
                            .focused($focusedTextField, equals: .fullName)
                            .onSubmit {focusedTextField = .phone}
                            .submitLabel(.continue)
                        
                        TextField("Telephone Number", text: $viewModel.user.phone)
                            .focused($focusedTextField, equals: .phone)
                            .onSubmit {focusedTextField = .email}
                            .submitLabel(.continue)
                        
                        TextField("Email", text: $viewModel.user.email)
                            .focused($focusedTextField, equals: .email)
                            .onSubmit {focusedTextField = .address}
                            .submitLabel(.continue)
                        
                        TextField("Mailing Address", text: $viewModel.user.address)
                            .focused($focusedTextField, equals: .address)
                            .onSubmit {focusedTextField = nil}
                            .submitLabel(.done)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .autocorrectionDisabled(true)
                        Button {
                            viewModel.saveChanges()
                        } label: {
                            Text("Save Changes")
                        }
                    }
                    .navigationTitle("Account Info")
                    .toolbar{
                        ToolbarItemGroup(placement: .keyboard) {
                            Button("Dismiss") {focusedTextField = nil}
                        }
                    }
                }
                .onAppear{
                    viewModel.retrieveUser()
                }
                
            }
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
