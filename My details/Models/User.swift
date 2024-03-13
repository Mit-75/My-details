//
//  User.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import Foundation

struct User {
    let person: Person
    
    let userName = "User"
    let passvord = "123"
    
    static func getUser() -> User {
        User(
            person: Person(
                name: "Дмитрий",
                age: 48,
                surname: "Пархоменко",
                work: """
                "Россети" (уволился 01.02.2024)
                """,
                description: """
                Родился 27.08.1975г. Образование высшее
                техническое: Челябинский государственный
                технический университет, 1997г.
                С 1997 по 2004 проработал в компании
                Россети, прошел путь от инженера СРЗиА
                до директора производственного отделения.
                На данный момент свободен, определяюсь.
                Женат, трое детей.
                Увлечения: Swift, активный отдых, аудио
                книги и дом с баней.
                """,
                family: Family.family,
                location: Location(
                    region: "Cвердловская область",
                    sity: "г.Екатеринбург",
                    addsress: "Проспект Академика Сахарова д.73, кв. 178"
                )
            )
        )
    }
}

struct Person {
    let name: String
    let age: Int
    let surname: String
    let work: String
    let description: String
    let family: Family
    let location: Location
    
    var fullName: String {
        "\(surname) \(name)"
    }
}

enum Family: String {
    case family = """
            Супруга.......Татьяна Николаевна,
            преподаватель английского языка
        
            Мои дети:
            старший сын...Алексей, IOS Developer
            дочь..........Екатерина, студент
            младший сын...Антон, школьник
        """
}

struct Location {
    let region: String
    let sity: String
    let addsress: String
}

