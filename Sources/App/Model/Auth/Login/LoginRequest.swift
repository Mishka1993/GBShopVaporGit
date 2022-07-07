//
//  LoginRequest.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}
