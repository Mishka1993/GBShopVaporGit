//
//  CatalogRequest.swift
//  
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Vapor

struct CatalogRequest: Content {
    let pageNumber: Int
    let categoryID: Int
}
