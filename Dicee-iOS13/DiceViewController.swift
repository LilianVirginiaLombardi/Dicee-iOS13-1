//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
//    MARK: - ENUM CONSTANTSVIEWCONTROLLER
    enum ConstantsViewController {
        static let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        static let alphaRollButton = 0.8
        static let cornerRadiusRollButton = 10
    }
//    MARK: - IBOUTLETS
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
//    MARK: -
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceArray()
    }
    //    MARK: - VIEWDIDLOAD FUNC
    override func viewDidLoad() {
        super.viewDidLoad()
        changeUIRollButton()
    }
//    MARK: - CHANGEDICEARRAY FUNC
    func changeDiceArray() {
        diceImageView1.image = ConstantsViewController.diceArray [Int.random(in: 0...5)]
        diceImageView2.image = ConstantsViewController.diceArray[Int.random(in: 0...5)]
    }
//    MARK: - CHANGEUIROLLBUTTON FUNC
    func changeUIRollButton() {
        rollButton.alpha = CGFloat(ConstantsViewController.alphaRollButton)
        rollButton.layer.cornerRadius = CGFloat(ConstantsViewController.cornerRadiusRollButton)
    }
}
