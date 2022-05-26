//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Mufti, Shayan on 5/5/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    // Call Question() function and pass text and answer into it
    // Array of question items created from a structure
    let quiz = [
        Question(q: "A slug's blood is yellow.", a: "False"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    // Keeps track of questions by number (0 is first question)
    var questionNumber = 0
    
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        
        // if user chose the right answer for that specific question
        if userAnswer == quiz[questionNumber].answer {
            return true
        }
        else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        
        // if there are still questions remaining (3 max questions)
        if questionNumber + 1 < quiz.count {
            questionNumber = questionNumber + 1             // increment through each question
        }
        
        // if no questions remain
        else {
            questionNumber = 0                              // restart quiz, go back to first question
        }
    }
}
