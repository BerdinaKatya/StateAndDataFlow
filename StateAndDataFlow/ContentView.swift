//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Ekaterina Teliauberdina on 19.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
                
            Spacer()
            
            ButtonView(title: timer.buttonTitle, color: .red) {
                timer.startTimer()
            }
            
            Spacer()
            
            ButtonView(title: "Log out", color: .blue) {
                userManager.user.isLoggedIn.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(UserManager())
}


