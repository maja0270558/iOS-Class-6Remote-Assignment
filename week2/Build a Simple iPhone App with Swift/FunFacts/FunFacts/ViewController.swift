//
//  ViewController.swift
//  FunFacts
//
//  Created by Screencast on 11/1/16.
//  Copyright © 2016 Treehouse Island. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    @IBOutlet weak var assignmentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact(array: factProvider.facts)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact(array: factProvider.facts)
        assignmentLabel.text = factProvider.randomFact(array: factProvider.text)
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}


























