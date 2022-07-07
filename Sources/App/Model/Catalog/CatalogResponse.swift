//
//  CatalogResponse.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

struct CatalogResponse: Content {
    let products: [Product]
}

struct Product: Content {
    let productID: Int
    let name: String
    let price: Int
}
