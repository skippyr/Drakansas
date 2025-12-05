//
//  App.swift
//  Part of the DrakansasDemo project.
//
//  Created by Sherman Barros <skippyr.developer@icloud.com>
//  Visit my website: https://dragonscave.xyz.
//  Follow me on GitHub: https://github.com/skippyr.
//
//  Refer to the LICENSE file that comes in its source code for more details.
//  If not available, all rights are reserved to the author.
//

import Teco

// MARK: Structs
/// Represents an elite programmer.
struct Dragon {
    /// The name of the programmer.
    let name: String
    /// The essence of the programmer.
    let essence: String
    
    @MainActor
    /// Greets the user to the family.
    ///
    /// - Parameter name: the name of the user.
    func greet(_ name: String = NSFullUserName()) {
        Terminal.print("Welcome to the family, \(name)!")
    }
}

// MARK: Main Execution
@main
enum App {
    private static func main() {
        let skippyr = Dragon(name: "skippyr", essence: "Be Awesome!")
        skippyr.essence = "Be Bad!"
        skippyr.greet()
    }
}

