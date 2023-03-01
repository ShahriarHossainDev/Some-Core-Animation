//
//  ButtonViewController.swift
//  Some Core Animation
//
//  Created by Shishir_Mac on 1/3/23.
//

import UIKit

class ButtonViewController: UIViewController {
    
    @IBOutlet weak var onebutton: UIButton!
    @IBOutlet weak var twobutton: UIButton!
    @IBOutlet weak var threebutton: UIButton!
    @IBOutlet weak var heartbtn: UIButton!
    @IBOutlet weak var ballbtn: UIButton!
    @IBOutlet weak var tadabtn: UIButton!
    @IBOutlet weak var Rotationbtn: UIButton!
    @IBOutlet weak var nextbtn: UIButton!
    @IBOutlet weak var swingbtn: UIButton!
    
    let defaultDuration = 2.0
    let defaultDamping = 0.20
    let defaultVelocity = 6.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onebutton.layer.cornerRadius = 8
        twobutton.layer.cornerRadius = 8
        threebutton.layer.cornerRadius = 8
        heartbtn.layer.cornerRadius = 8
        tadabtn.layer.cornerRadius = 8
        Rotationbtn.layer.cornerRadius = 8
        nextbtn.layer.cornerRadius = 8
        swingbtn.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pulsebutton(_ sender: UIButton) {
        sender.ButtonPulse()
    }
    
    @IBAction func flashbutton(_ sender: UIButton) {
        sender.ButtonFlash()
    }
    
    @IBAction func heartbutton(_ sender: UIButton) {
        sender.heartbeat()
    }
    
    @IBAction func shakebutton(_ sender: UIButton) {
        sender.ButtonShake()
    }
    
    @IBAction func ballbutton(_ sender: UIButton) {
        sender.ButtonBounce()
    }
    
    @IBAction func tadaButton(_ sender: UIButton) {
        sender.ButtonTada()
    }
    
    @IBAction func RotationButton(_ sender: UIButton) {
        sender.ButtonRotates()
    }
    @IBAction func SwingButton(_ sender: UIButton) {
        
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "secVC") as! ButtonSecViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
