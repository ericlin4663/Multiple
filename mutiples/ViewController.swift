//
//  ViewController.swift
//  mutiples
//
//  Created by Eric Lin on 2/28/16.
//  Copyright © 2016 Eric Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var mutipleTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    var firstNum = 0
    var secondNum = 0
    var sum = 0
    let FIVE_TIMES = 5
    var loopFiveTimes = 0

    @IBAction func playButtonPressed(sender: UIButton) {
        if mutipleTextField.text != nil && mutipleTextField.text != "" {
            secondNum = Int(mutipleTextField.text!)!
            
            titleImage.hidden = true
            mutipleTextField.hidden = true
            playButton.hidden = true
            
            sumLabel.hidden = false
            addButton.hidden = false
           
            sumLabel.text = "Press ADD to add"
         //   updateMultipleLabel()
        }
        
        
    }
    
    @IBAction func addButtonPressed(sender: UIButton) {
        
        if loopFiveTimes++ <= FIVE_TIMES {
            updateMultipleLabel()
        }
        else {
            gameRestart()
        }
    }
    
    func gameRestart () {
        titleImage.hidden = false
        mutipleTextField.hidden = false
        playButton.hidden = false
        sumLabel.hidden = true
        addButton.hidden = true
        
        mutipleTextField.text = ""
        sumLabel.text = ""
        firstNum = 0
        secondNum = 0
        sum = 0
        loopFiveTimes = 0
        
    }
    
    func updateMultipleLabel () {
        sumLabel.text = "\(firstNum) + \(secondNum) = \(firstNum + secondNum)"
        firstNum += secondNum
    }
}

