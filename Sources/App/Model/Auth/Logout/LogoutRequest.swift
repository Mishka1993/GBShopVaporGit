//
//  LogoutRequest.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

struct LogoutRequest: Content {
    let userID: Int
}
