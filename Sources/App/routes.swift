import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }
    
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let authController = AuthController()
    app.get("login", use: authController.login)
    app.get("logout", use: authController.logout)
    
    let catalogController = CatalogController()
    app.get("catalog", use: catalogController.getProductList)
}
