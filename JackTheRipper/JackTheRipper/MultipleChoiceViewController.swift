//
//  MultipleChoiceViewController.swift
//  JackTheRipper
//
//  Created by Danielle Inkster on 2019-12-02.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation
import UIKit

protocol MultipleChoiceViewControllerDelegate : class  {
    func setScore (score:Int?, name:String?, turnScore: Int?)
}

class MultipleChoiceViewController: UIViewController {
    weak var delegate : MultipleChoiceViewControllerDelegate?
    var score: Int? = nil
    var turnScore: Int? = nil
    var name: String? = nil
    var game : Game?
    let correctAnswer = 0
    
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var rightAnswer: UIButton!
    @IBOutlet weak var wrongAnswer1: UIButton!
    @IBOutlet weak var wrongAnswer2: UIButton!
    @IBOutlet weak var wrongAnswer3: UIButton!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        game = Game()
        game?.title = name ?? "Novice Detective"
        game?.score = score ?? 0
        game?.turnScore = turnScore ?? 5
        
        nextButton.isHidden = true
        titleLabel.text = "\(game?.title ?? "Error")"
        scoreLable.text = "Score: \(game?.score ?? 0)"
        answerLabel.isHidden = true
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.tag == correctAnswer {
            title = "Correct"
            game?.rightAnswer()
            scoreLable.text = "Score: \(game?.score ?? 0)"
            titleLabel.text = "\(game?.title ?? "Error")"
            answerLabel.text = "Correct!"
            answerLabel.isHidden = false
            nextButton.isHidden = false
            disableButtons()
            delegate?.setScore(score: game?.score, name: game?.title, turnScore: game?.turnScore)
        } else {
            title = "Incorrect"
            answerLabel.text = "Incorrect."
            answerLabel.isHidden = false
            game?.wrongAnswer()
            delegate?.setScore(score: game?.score, name: game?.title, turnScore: game?.turnScore)
        }
    }
    
    func disableButtons(){
        self.navigationItem.hidesBackButton = true
        rightAnswer.isUserInteractionEnabled = false
        wrongAnswer1.isUserInteractionEnabled = false
        wrongAnswer2.isUserInteractionEnabled = false
        wrongAnswer3.isUserInteractionEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if let Congratulations1ViewController = segue.destination as? Congratulations1ViewController {
            Congratulations1ViewController.score = game?.score;
            Congratulations1ViewController.name = game?.title
           }
    }
    

}
