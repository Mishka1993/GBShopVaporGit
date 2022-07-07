//
//  LoginResponse.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: User
}

struct User: Content {
    let id: Int
    let login: String
    let name: String
    let lastName: String
}
