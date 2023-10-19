//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Ekaterina Teliauberdina on 19.10.2023.
//

import SwiftUI

struct RootView: View {
    @StateObject private var userManager = UserManager()
    
    var body: some View {
        Group {
            if userManager.user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }
        .environmentObject(userManager)
    }
}

#Preview {
    RootView()
}
