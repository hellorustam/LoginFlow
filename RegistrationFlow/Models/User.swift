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
    
    let aims: String
    let coolStory: String
    
    static func getUser() -> User {
       User(
            login: "Rustam",
            password: "XOXO",
            person: Person(
                avatar: "myProfilePicture",
                fullName: "Rustam Samiev",
                about: "🤖 I'm IT enthusiast and I like to create Apps with Swift",
                facts: "I like to CODE,\nDANCE & CHOCOLATE"
            ),
            aims: "Learn how to cook 28 meals & planning great travel trips",
            coolStory: "🏕️\nOnce my friends and I gathered at the lake Kupavna. We grilled kebabs and sang songs all night long. But when we went to bed, our kebab was stolen by the 🦫 andatra."
        )
    }
}

struct Person {
    let avatar: String
    let fullName: String
    let about: String
    let facts: String
}
