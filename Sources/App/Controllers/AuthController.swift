//
//  AuthController.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

class AuthController {
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {

        guard let body = try? req.query.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LoginResponse(
            result: 1,
            user: User(
                id: 001,
                login: "Mkirzhner0000",
                name: "Mikhail",
                lastName: "Kirzhner")
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        
        guard let body = try? req.query.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LogoutResponse(result: 1)
        
        return req.eventLoop.future(response)
    }
}
