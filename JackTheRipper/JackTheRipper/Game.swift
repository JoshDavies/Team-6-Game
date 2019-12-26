//
//  Game.swift
//  JackTheRipper
//
//  Copyright © 2019 Team6. All rights reserved.
//

class Game{
    var turnScore: Int
    var score: Int
    var progress: Int
    var title: String
    var scoreMax: Int
    var turnMin: Int

    
    init(){
       score = 0
        turnScore = 5
        turnMin = 1
        scoreMax = 25
        progress = 0
        title = "Novice Detective"
    }
    
    func changeTitle() {
        switch score {
        case ...4:
            title = "Novice Detective"
        case 5...10:
            title = "Junior Detective"
        case 11...16:
            title = "Detective"
        case 17...21:
            title = "Senior Detective"
        case 22...:
            title = "Master Detective"
        default:
            title = "error"
        }
    }
    
    func wrongAnswer() {
        if turnScore == turnMin {
            turnScore = turnMin
         } else {
            turnScore -= 1
         }
     }
        
    func addToGameScore(){
        if score <= (25 - turnScore) {
            score += turnScore
        } else {
            score = scoreMax
        }
    }
     
     func rightAnswer() {
        addToGameScore()
        turnScore = 5
        changeTitle()
    }
}

