//
//  main.swift
//  DrakansasDemo
//
//  Created by Sherman Barros on 10/30/25.
//

struct Dragon {
    let name: String
    let essence: String
    
    func greet() {
        print("Welcome to the family!")
    }
}

let skippyr = Dragon(name: "skippyr", essence: "Be Awesome!")
skippyr.essence = "Be Bad!"
skippyr.greet()
