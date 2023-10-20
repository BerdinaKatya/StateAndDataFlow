//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Ekaterina Teliauberdina on 19.10.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            ZStack {
                TextField("Enter your name...", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                HStack {
                    Spacer()
                    
                    Text(String(userManager.user.name.count))
                        .padding(.trailing, 20)
                        .foregroundStyle(userManager.nameIsValid ? .green : .red)
                }
            }
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!userManager.nameIsValid)
        }
    }
    
    private func login() {
        userManager.user.isLoggedIn.toggle()
        
        StorageManager.shared.save(userManager)
    }
}

#Preview {
    LoginView()
        .environmentObject(UserManager())
}
