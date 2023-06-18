//
//  main.swift
//  RockPaperScissors
//
//  Created by Öznur Ölçek on 18.06.2023.
//

import Foundation

enum Choice {
    case rock
    case paper
    case scissors
    
    var emoji : String {
        switch self {
        case .rock: return "🪨"
        case .paper: return "📄"
        case .scissors: return "✂️"
        }
      }
}

let choice: [String] = [Choice.rock.emoji, Choice.paper.emoji, Choice.scissors.emoji]

var computerChoice = choice.randomElement()!
var userChoice : String?
print("1 -> 🪨\n2 -> 📄\n3 -> ✂️\nChoice:")
var uChoice = Int(readLine()!)!
switch uChoice {
    case 1: userChoice = Choice.rock.emoji
    case 2: userChoice = Choice.paper.emoji
    case 3: userChoice = Choice.scissors.emoji
        default: print("Invalid input.")
}

print("Your Choice: \(userChoice!)")
print("Computer's Choice: \(computerChoice)")

if ((userChoice == Choice.rock.emoji && computerChoice == Choice.rock.emoji) || (userChoice == Choice.paper.emoji && computerChoice == Choice.paper.emoji) || (userChoice == Choice.scissors.emoji && computerChoice == Choice.scissors.emoji)) {
    print("Scoreless🤝🏼")
} else if ((userChoice == Choice.rock.emoji && computerChoice == Choice.scissors.emoji) || (userChoice == Choice.scissors.emoji && computerChoice == Choice.paper.emoji) || (userChoice == Choice.paper.emoji && computerChoice == Choice.rock.emoji) ) {
    print("You win🥳")
}
else {
    print("You lost😬")
}


