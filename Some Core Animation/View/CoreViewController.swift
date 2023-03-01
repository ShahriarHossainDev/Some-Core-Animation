//
//  CoreViewController.swift
//  Some Core Animation
//
//  Created by Shishir_Mac on 1/3/23.
//

import UIKit

class CoreViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var blurImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.cornerRadius = 5
        
        blurImage()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveButtonPressed(_ sender: Any) {
        // 1
        let newConstraint = NSLayoutConstraint(item: redView as Any, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: view.frame.width)
        
        // 2
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut , animations: {
            self.view.removeConstraint(self.leadingConstraint)
            self.view.addConstraint(newConstraint)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        // 3
        leadingConstraint = newConstraint
    }
    
    // MARK: - Function
    
    func blurImage() {
        // 1
        let darkBlur = UIBlurEffect(style: .systemUltraThinMaterialDark)
        // 2
        let blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = blurImageView.bounds
        // 3
        blurImageView.addSubview(blurView)
    }
    
}
