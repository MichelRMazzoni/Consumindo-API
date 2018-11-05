//
//  UserDefaults+Properties.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    var accessToken: String? {
        get { return UserDefaults.standard.string(forKey: #function) }
        set { UserDefaults.standard.set(newValue, forKey: #function) }
    }
    
    var refreshToken: String? {
        get { return UserDefaults.standard.string(forKey: #function) }
        set { UserDefaults.standard.set(newValue, forKey: #function) }
    }
    
    var userID: String? {
        get { return UserDefaults.standard.string(forKey: #function) }
        set { UserDefaults.standard.set(newValue, forKey: #function) }
    }
    
}
