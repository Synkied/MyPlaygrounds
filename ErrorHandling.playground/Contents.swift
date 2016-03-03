//: Error handling with enumerations and switches

enum LoginFailure : ErrorType{
    
    case InvalidUsername
    case InvalidPassword
    
}

// fake db

let dbUsername = "user1"
let dbPassword = "pass1"

// no getting through with no password

var loginError = LoginFailure.InvalidPassword

func loginUser(username: String, password: String) throws -> Bool{
    
    // check the db for username
    guard username == dbUsername else{
        
        loginError = LoginFailure.InvalidUsername
        throw LoginFailure.InvalidUsername
    }
    
    // check db for password
    
    guard password == dbPassword else{
        loginError = LoginFailure.InvalidPassword
        throw LoginFailure.InvalidPassword
    }
    
    return true
    
}


do{
    try loginUser("user1", password: "pass1")
    print("Login successful")
    
} catch{
    
    switch loginError{
        
    case .InvalidUsername:
        print("Login failed; Invalid username")
    case .InvalidPassword:
        print("Login failed; Invalid password")
        
    }
    
}