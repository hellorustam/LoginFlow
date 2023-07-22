//
//  User.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 18.07.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
       User(
            login: "Rustam",
            password: "XOXO",
            person: Person(
                fullName: "Rustam Samiev",
                about: "🤖 I'm IT enthusiast and I like to create Apps with Swift",
                facts: "I like to CODE, DANCE & CHOCOLATE"
            )
        )
    }
}

struct Person {
    let fullName: String
    let about: String
    let facts: String
}
