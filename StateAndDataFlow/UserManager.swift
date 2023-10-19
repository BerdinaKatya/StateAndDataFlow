//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Ekaterina Teliauberdina on 19.10.2023.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
    
}
