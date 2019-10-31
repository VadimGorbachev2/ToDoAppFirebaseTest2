//
//  User.swift
//  ToDoFirebaseTest2
//
//  Created by Vadim  Gorbachev on 31.10.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import Foundation
import Firebase

struct User {
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        
    }
}
