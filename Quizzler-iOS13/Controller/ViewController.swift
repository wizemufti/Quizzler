//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Connects each label on app screen to this code
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()         // call QuizBrain function and initialize it to quizBrain
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // go through each question (changes label)
        updateUI()
    }

    // Connects buttons (True and False) to this code
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!            // Track answer the user chose for the question
        let userGotItRight = quizBrain.checkAnswer(userAnswer)       // Track what the actual answer is to the question by calling the QuizBrain function
            
        // if answer is correct
        if userGotItRight {
            
            // change button to green
            sender.backgroundColor = UIColor.green
        }
        
        // if answer is wrong
        else {
            
            // change button to red
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        // Timer that shows button colors for 0.2 seconds and dot not repeat. Also change question label by calling updateUI function
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    // function that updates the user interface
    @objc func updateUI() {
        
        // updates question label based on question number then the question needed
        questionLabel.text = quizBrain.getQuestionText()
        // progress bar update after each question
        progressBar.progress = quizBrain.getProgress()
        
        
        // clear buttons after every question
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }

}


