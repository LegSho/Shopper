//
//  ViewController.swift
//  Shopper
//
//  Created by Igor Tabacki on 11/23/17.
//  Copyright © 2017 Igor Tabacki. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        // calcBtn.titleLabel?.text = "Calculate"  ---- ovo ne bi radilo samo ovo iznad koristiti!
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
        
    }
    
    
    
    @objc func calculate() {
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {  // da li su prazna polja, ako nisu i imaju nesto - idi dalje
            if let wage = Double(wageTxt), let price = Double(priceTxt) {  // ako ima vidi da prebacis u broj
                view.endEditing(true)                                       // ugasi i spusti keyboard jer ne treba vise
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
        
        print("Selector - uvek inicirati kao .addTarge(...) a pozvati kao objc func xxx")
        
        
        
        /* da bi mogao izvesti #selector mora se pozvati kao @objc
         jer je to ObjectiveC feature i mora se znati kad se
         poziva van Swift-a
         OVO JE NAJBEZBEDNIJI NACIN POZVATI SELECTOR! ! ! */
        
    }
    
    @IBAction func clearCalculator(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

