//
//  ViewController.swift
//  window-shopper
//
//  Created by Ng Ricky on 16/8/2017.
//  Copyright © 2017 ICON. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrTxtField!
    @IBOutlet weak var priceTxt: CurrTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9953880858, green: 0.5307201416, blue: 0.3799702737, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hourLbl.isHidden = true

        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"

            }
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        priceTxt.text = ""
        wageTxt.text = ""
        print("Press")
    }

    
    
    
}

