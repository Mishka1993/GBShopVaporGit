//
//  CatalogController.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

class CatalogController {
    
    func getProductList(_ req: Request) throws -> (EventLoopFuture<CatalogResponse>) {
        
        guard let body = try? req.query.decode(CatalogRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = CatalogResponse(products: Database.shared.catalog.products)
        return req.eventLoop.future(response)
    }
}
