//
//  Task.swift
//  ToDoFirebaseTest2
//
//  Created by Vadim  Gorbachev on 31.10.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import Foundation
import Firebase

struct Task {
    let title: String
    let userId: String
    let ref: DatabaseReference?
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
    }
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
}
