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
    let labelString = ["1","2","3","4","5","6","7","8","9","0","清除","送出"]
    var numberArray : [String] = []
    var targetNumber : Int = 0
    var currentNumber : Int = -1
    var currentMaxNumber :Int = 100
    var currentMinNumber : Int = 0
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var enterTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        targetNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 100)
        configCollectionView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func configCollectionView () {
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(nib, forCellWithReuseIdentifier: "CodeCell")
        collectionView.backgroundColor = UIColor.clear
        collectionView.backgroundView = UIView(frame:CGRect.zero)
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
    func resetNumber (){
        currentNumber = -1
        currentMaxNumber = 100
        currentMinNumber  = 0
    }
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func cancelButtonAction() {
        numberArray.removeAll()
        enterTextLabel.text = "請輸入數字"
    }
    func sendButtonAction() {
        compareWithTarget(enterTextLabel.text!)
    }
    func numberAction(number : String) {
        appendDisplayStack(numberString: (number))
        updateEnterTextLabel(numberArray)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return labelString.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CodeCell", for: indexPath) as? CollectionViewCell else {
            fatalError("cell error")
        }
        cell.cellLabel.text = labelString[indexPath.row]
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = cell.bounds.size.width/2
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing = 10
        let width = collectionView.frame.size.width / 3 - CGFloat(spacing * 2)
        let size = CGSize(width: width, height: width)
        return size
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
            if let selectString = cell.cellLabel.text {
                switch selectString {
                case "送出" : sendButtonAction()
                case "清除" : cancelButtonAction()
                default : numberAction(number: selectString)
                }
            }
        }
    }
}
