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
    @IBOutlet weak var boderView: UIView!
    
    @IBOutlet weak var animatedCountingLabel: UILabel!
    
    // MARK: - Properties -
    
    var circularProgressBarView: CircularProgressBarView!
    var circularViewDuration: TimeInterval = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.cornerRadius = 5
        setUpCircularProgressBarView()
        blurImage()
        changeColor()
        borderColor()
        
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
    
    // Change view color
    func changeColor() {
        
        // Define an array of 6 colors
        let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
        
        // Set the initial color of the view
        boderView.backgroundColor = colors.first
        
        // Animate the color change to the rest of the colors in the array
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            for color in colors.dropFirst() {
                self.boderView.backgroundColor = color
            }
        }, completion: nil)
    }
    
    // view border Color
    
    func borderColor() {
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: self.boderView.frame.size)
        gradient.colors = [UIColor.blue.cgColor, UIColor.brown.cgColor]
        
        let shape = CAShapeLayer()
        shape.lineWidth = 20
        shape.path = UIBezierPath(rect: self.boderView.bounds).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        
        self.boderView.layer.addSublayer(gradient)
    }
    
    func setUpCircularProgressBarView() {
            circularProgressBarView = CircularProgressBarView(frame: .zero)
            circularProgressBarView.center = view.center
            circularProgressBarView.progressAnimation(duration: circularViewDuration)
            view.addSubview(circularProgressBarView)
        }
    
}
