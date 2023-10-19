//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Ekaterina Teliauberdina on 19.10.2023.
//

import Foundation
import SwiftUI

class StorageManager {
    
    @AppStorage("userName") private var userName = ""
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    
}
