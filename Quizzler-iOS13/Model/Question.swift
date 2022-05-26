//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Mufti, Shayan on 5/4/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

// Question structure initializing text and answer
struct Question {
    let text: String
    let answer: String
    
    // makes typing easier. text is shown as q now and answer is shown as a now
    init (q: String, a: String) {
        text = q
        answer = a
    }
}
