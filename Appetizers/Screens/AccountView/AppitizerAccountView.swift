//
//  AppitizerAccountView.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-06.
//

import SwiftUI

struct AppitizerAccountView: View {
    
    @StateObject var VM = AccountViewModel()
    
    
    var body: some View {
      
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $VM.user.firstName)
                    TextField("Last Name", text: $VM.user.lastName)
                    TextField("Email", text: $VM.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $VM.user.Birthdate, displayedComponents: .date)
                    
                    Button {
                        VM.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $VM.user.ExNap)
                    Toggle("Frequent Refills", isOn: $VM.user.FreqRefill)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color(.brandPrimary)))
               
            }
                .navigationTitle("Account")
        }
        .onAppear() {
            VM.retrieveUser()
        }
        .alert(item: $VM.alertItem) {AlertItem in
            Alert(title: AlertItem.title, message: AlertItem.message, dismissButton: AlertItem.dismissButton)
        }
    }
}

#Preview {
    AppitizerAccountView()
}
