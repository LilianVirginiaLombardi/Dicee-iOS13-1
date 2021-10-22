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
        static let diceImage = #imageLiteral(resourceName: "DiceSix")
        static let alphaRollButton = 0.8
        static let cornerRadiusRollButton = 10
        static let diceImage2 = #imageLiteral(resourceName: "DiceTwo")
        static let diceImage4 = #imageLiteral(resourceName: "DiceFour")
    }
//    MARK: - IBOUTLETS
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
//    MARK: -
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeUIDiceFour()
    }
    //    MARK: - VIEWDIDLOAD FUNC
    override func viewDidLoad() {
        super.viewDidLoad()
        changeUIDiceOne()
        changeUIRollButton()
        changeUIDiceTwo()
    }
//    MARK: - CHANGEUIDICEONE FUNC
    func changeUIDiceOne() {
        diceImageView1.image = ConstantsViewController.diceImage
    }
//    MARK: - CHANGEUIROLLBUTTON FUNC
    func changeUIRollButton() {
        rollButton.alpha = CGFloat(ConstantsViewController.alphaRollButton)
        rollButton.layer.cornerRadius = CGFloat(ConstantsViewController.cornerRadiusRollButton)
    }
//    MARK: - CHANGEUIDICETWO FUNC
    func changeUIDiceTwo() {
        diceImageView2.image = ConstantsViewController.diceImage2
    }
    func changeUIDiceFour() {
        diceImageView1.image = ConstantsViewController.diceImage4
        diceImageView2.image = ConstantsViewController.diceImage4
    }
}
