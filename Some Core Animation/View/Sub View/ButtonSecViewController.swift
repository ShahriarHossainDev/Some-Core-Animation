//
//  ButtonSecViewController.swift
//  Some Core Animation
//
//  Created by Shishir_Mac on 1/3/23.
//

import UIKit

class ButtonSecViewController: UIViewController {
    
    var buttonWork = UIButton()
    
    @IBOutlet weak var buttone: UIButton!
    @IBOutlet weak var buttontwo: UIButton!
    @IBOutlet weak var buttontre: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttone.layer.cornerRadius = 8
        buttontwo.layer.cornerRadius = 8
        buttontre.layer.cornerRadius = 8
        buttonbu()
        // Do any additional setup after loading the view.
    }
    
    
    func buttonbu() {
        
        let xOpen = buttone.frame.origin.x - 400
        let yOpen = buttone.frame.origin.y
        
        let width = buttone.frame.size.width
        let height = buttone.frame.size.height
        
        self.buttone.frame = CGRect(x: xOpen, y: yOpen, width: width, height: height)
        
        let xscepen = buttone.frame.origin.x + 500
        
        UIView.animate(withDuration: 1.0, animations: {
            self.buttone.frame = CGRect(x: xscepen, y: yOpen, width: width, height: height)
            
        })
        
        let xspen = buttontwo.frame.origin.x - 400
        let yspen = buttontwo.frame.origin.y
        
        let swidth = buttontwo.frame.size.width
        let sheight = buttontwo.frame.size.height
        
        self.buttontwo.frame = CGRect(x: xspen, y: yspen, width: swidth, height: sheight)
        
        let xsscepen = buttontwo.frame.origin.x + 500
        
        UIView.animate(withDuration: 2.0, animations: {
            self.buttontwo.frame = CGRect(x: xsscepen, y: yspen, width: swidth, height: sheight)
        })
        
        let xtpen = buttontre.frame.origin.x - 400
        let ytpen = buttontre.frame.origin.y
        
        let twidth = buttontre.frame.size.width
        let theight = buttontre.frame.size.height
        
        self.buttontre.frame = CGRect(x: xtpen, y: ytpen, width: twidth, height: theight)
        
        let tsscepen = buttontre.frame.origin.x + 500
        
        UIView.animate(withDuration: 3.0, animations: {
            self.buttontre.frame = CGRect(x: tsscepen, y: ytpen, width: twidth, height: theight)
        })
        
    }
}
