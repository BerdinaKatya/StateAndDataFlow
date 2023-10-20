//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Ekaterina Teliauberdina on 19.10.2023.
//

import Foundation
import SwiftUI

final class StorageManager {
    
    static let shared = StorageManager()
    
    @AppStorage("userName") var userName = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    private init() {}
    
    func save(_ userManager: UserManager) {
        userName = userManager.user.name
        isLoggedIn = userManager.user.isLoggedIn
    }
    
    func logOut(_ userManager: UserManager) {
        userManager.user.name = ""
        userManager.user.isLoggedIn = false
        
        userName = ""
        isLoggedIn = false
    }
}
