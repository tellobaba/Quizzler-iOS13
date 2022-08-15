//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Oluwatomiwa on 10/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    let quiz = [
        Question(text: "Are you Oluwatomiwa", answer: "Yes"),
        Question(text: "Are you married", answer: "No"),
        Question(text: "Are you a developer", answer: "Yes")
    ]
        var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Correct Lad!")
        } else {
            print("Wrong mate!")
        }
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }
}

