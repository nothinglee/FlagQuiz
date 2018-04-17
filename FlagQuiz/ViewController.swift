//
//  ViewController.swift
//  FlagQuiz
//
//  Created by 이수한 on 2018. 3. 18..
//  Copyright © 2018년 이수한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var leftTopButton: UIButton!
    @IBOutlet weak var rightTopButton: UIButton!
    @IBOutlet weak var leftBottomButton: UIButton!
    @IBOutlet weak var rightBottomButton: UIButton!
    @IBOutlet weak var correctOrInaccurateLabel: UILabel!
    
    var buttonArray: Array<UIButton> = []
    
    @IBAction func checkAnswer(_ btn: UIButton) {
        guard let btnText = btn.titleLabel?.text else {
            return
        }
        
        if nameLabel.text == btnText {
            correctOrInaccurateLabel.text = "정답"
        } else {
            correctOrInaccurateLabel.text = "오답"
        }
    }
        
    @IBAction func nextQuiz(_ sender: Any) {
        correctOrInaccurateLabel.text = ""
        makeQuestion()
    }
    
    
    func makeQuestion() {
        var answerList: Array<Int> = [0, 0, 0, 0]
        answerList[0] = Int(arc4random_uniform(UInt32(countryList.count)))
        print(answerList[0])
        for i in 1...3 {
            answerList[i] = Int(arc4random_uniform(UInt32(countryList.count)))
            var isDuplicated = false
            repeat {
                for j in  0...i-1 {
                    if answerList[i] == answerList[j] {
                        answerList[i] = Int(arc4random_uniform(UInt32(countryList.count)))
                        isDuplicated = true
                        break
                    }
                }
                
            } while isDuplicated
            
            print(answerList[i])
        }
        
        let correctAnswer = Int(arc4random_uniform(UInt32(4)))
        flagImageView.image = UIImage(named: countryList[answerList[correctAnswer]])
        nameLabel.text = String(countryList[answerList[correctAnswer]].characters.dropLast(4))
        for i in 0...3 {
            buttonArray[i].setTitle(String(countryList[answerList[i]].characters.dropLast(4)), for: .normal)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        correctOrInaccurateLabel.text = ""
        buttonArray.append(leftTopButton)
        buttonArray.append(rightTopButton)
        buttonArray.append(leftBottomButton)
        buttonArray.append(rightBottomButton)
        
        makeQuestion()
        
        nameLabel.alpha = 0.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}