//
//  ViewController.swift
//  Quiz
//
//  Created by Abraham Quezada on 28/08/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnswerButtonTapped(_ sender: UIButton) {
            showAnswer()
    }
    
    @IBAction func nextQuestionButtonTapped(_ sender: UIButton) {
            inc()
            nextQuestion()
    }
    
    func showAnswer(){
        let answer = Answers(answerOne: "14", answerTwo: "Jalisco", answerThree: "Tequila")
        switch currentQuestionIndex {
        case 1:
            answerLabel.text = answer.answerOne
            break
        case 2:
            answerLabel.text = answer.answerTwo
            break
        case 3:
            answerLabel.text = answer.answerThree
            break
        default:
            answerLabel.text = "????"
        }
    }

    func nextQuestion(){
        let question = Questions(questionOne: "7 + 7?", questionTwo: "Guadalajara's capital?", questionThree: "Guadalajara's Drink?")
        switch currentQuestionIndex {
        case 1:
            questionLabel.text = question.questionOne
        case 2:
            questionLabel.text = question.questionTwo
        case 3:
            questionLabel.text = question.questionThree
        default:
            questionLabel.text = "????"
        }
    }
    
    func inc(){
        if currentQuestionIndex > 3{
            currentQuestionIndex = 0
        }else{
            currentQuestionIndex += 1
        }
    }

}

