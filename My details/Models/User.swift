//
//  User.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import Foundation

struct User {
    let person: Person
    
    private let userName = "User"
    private let passvord = "qwerty"
}

struct Person {
    let name: String
    let surname: String
    let work: String
    let family: Family
    let location: Location
    
    
    var fullName: String {
        name + surname
    }
}

enum Family: String {
    case wife
    case children
    
    var definition: String {
        switch self {
        case .wife:
            "Татьяна"
        case .children:
            """
            Мои дети:
        старший сын...Алексей, IOS Developer
        дочь..........Екатерина, студент
        младший сын...Антон, школьник
        """
        }
    }
}

struct Location {
    let region: String
    let sity: String
    let addsress: String
}

