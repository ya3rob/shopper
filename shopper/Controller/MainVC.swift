//
//  ViewController.swift
//  shopper
//
//  Created by yousef buhamad on 10/6/18.
//  Copyright © 2018 yousef buhamad. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrenyTextField!
    @IBOutlet weak var costTxt: CurrenyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateButton
        costTxt.inputAccessoryView = calculateButton
        
    }
    
    @objc func calculate() {
        print("calculate button clicked")
    }


}

