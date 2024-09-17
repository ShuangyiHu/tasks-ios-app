//
//  User.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joinedAt: TimeInterval 
}

