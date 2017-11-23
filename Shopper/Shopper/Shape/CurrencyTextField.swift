//
//  CurrencyTextField.swift
//  Shopper
//
//  Created by Igor Tabacki on 11/23/17.
//  Copyright © 2017 Igor Tabacki. All rights reserved.
//

import UIKit

@IBDesignable           /* da bi se sve dizajnirano u ovoj klasi pokazivalo i na mainstoryboard
                            a ne samo na simulatoru! */

class CurrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {    /* sada moramo AKTIVIRATI TU F-JU da bi
                                                     se sve prikazivalo i NA STORYBOARD */
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    
        }
    
    func  customizeView() {                         /* ali posto mora biti pozvano i za Storyboard
                                                    i za Simulator(awakeFromNib) pravim jednu f-ju
                                                    sa zahtevima i nju pozivam u
                                                    prepareForInterfaceBuilder i u AwakeFromNib*/
        layer.cornerRadius = 5.0
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            
            
            clipsToBounds = true
    }
    }
    
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20                  // ovo je samo radi sirine i visine da bude lakse
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height/2 - size/2, width: size, height: size))   // uvek kada loudujem neki objekat najbolje je koristiti frame:CGRect(x,y,w,h)    --- frame.size.height/2 - size/2 da bi bio na sredini labele za cenu
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current           // ovo je po defaultu ali ipak sam radio- pokazuje oznaku valute iz zemlje u kojoj smo prijavili (ovde sada to je npr USD jer je mac na US)
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

}
