//
//  ViewController.swift
//  AssignmentWeek3
//
//  Created by 大容 林 on 2018/2/15.
//  Copyright © 2018年 DjangoCode. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    var numberArray : [String] = []
    var targetNumber : Int = 0
    var currentNumber : Int = -1
    var currentMaxNumber :Int = 100
    var currentMinNumber : Int = 0
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var stackView4: UIStackView!
    
    @IBOutlet weak var stackView3: UIStackView!
    @IBOutlet weak var stackView2: UIStackView!
    @IBOutlet weak var stackView1: UIStackView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var enterTextLabel: UILabel!
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        numberArray.removeAll()
        enterTextLabel.text = "請輸入數字"
    }
    @IBAction func sendButtonAction(_ sender: Any) {
        compareWithTarget(enterTextLabel.text!)
    }
    @IBAction func numberAction(_ sender: UIButton) {
        appendDisplayStack(numberString: (sender.titleLabel?.text!)!)
        updateEnterTextLabel(numberArray)
    }
    func appendDisplayStack(numberString :String) {
        numberArray.append(numberString)
    }
    func updateEnterTextLabel(_ numberArray : [String])  {
        if numberArray.count > 0 {
            var finalNumberString : String = ""
            for str in numberArray {
                finalNumberString += str
            }
            enterTextLabel.text = finalNumberString
        }else{
            enterTextLabel.text = "0"
        }
        
    }
    func compareWithTarget(_ enterNumber :  String){
        if let sendNumber = Int(enterNumber){
            if sendNumber <= currentMaxNumber && sendNumber >= currentMinNumber {
                if sendNumber == targetNumber {
                    currentNumber = sendNumber
                }else if sendNumber > targetNumber {
                    currentMaxNumber = sendNumber
                } else {
                    currentMinNumber = sendNumber
                }
                displayResult()
            }else{
                enterTextLabel.text = "請輸入 \(currentMinNumber) ~ \(currentMaxNumber) 之間的數字"
            }
        }else {
            enterTextLabel.text = "請輸入數字"
        }
        numberArray.removeAll()
    }
    func displayResult (){
        if currentNumber == targetNumber {
            enterTextLabel.text = "恭喜完成 輸入數字再次開始"
            resetNumber()
            numberArray.removeAll()
            
        }else{
            enterTextLabel.text = "\(currentMinNumber) ~ \(currentMaxNumber)"
        }
    }
    func resizeStackView(){
        let originSize = stackView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        let autoSize = stackView.frame.size
        let horizontalSpace = (autoSize.width - originSize.width)/3.0
        let verticleSpace = (autoSize.height - originSize.height)/4.0
        stackView.spacing = verticleSpace
        stackView1.spacing = horizontalSpace
        stackView2.spacing = horizontalSpace
        stackView3.spacing = horizontalSpace
        stackView4.spacing = horizontalSpace
    }
    func resetNumber (){
        currentNumber = -1
        currentMaxNumber = 100
        currentMinNumber  = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resizeStackView()
        targetNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 100)
        // Do any additional setup after loading the view, typically from a nib.
    }
}

