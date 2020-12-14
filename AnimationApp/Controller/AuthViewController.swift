//
//  AuthViewController.swift
//  AnimationApp
//
//  Created by Azzam R Alrashed on 09/12/2020.
//

import UIKit

class AuthViewController: UIViewController {

    @IBOutlet var signinView: UIView!
    @IBOutlet var signupView: UIView!
    
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var neptuneImage: UIImageView!
    @IBOutlet weak var jupiterImage: UIImageView!
    @IBOutlet weak var moonImage: UIImageView!
    @IBOutlet weak var worldImage: UIImageView!
    @IBOutlet weak var venusImage: UIImageView!
    @IBOutlet weak var rocketImage: UIImageView!
    
    @IBOutlet weak var signinCenterxLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var signinCenteryLayoutConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var signupCenterxLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var signupCenteryLayoutConstraint: NSLayoutConstraint!
    
    // sign in
    @IBOutlet weak var signinUsernameTextField: UITextField!
    @IBOutlet weak var signinPasswordTextField: UITextField!
    
    // sign up
    @IBOutlet weak var signupUsernameTextField: UITextField!
    @IBOutlet weak var signupEmailTextField: UITextField!
    @IBOutlet weak var signupPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        floatingAnimation(targetView: worldImage, distance: 20)
        floatingAnimation(targetView: moonImage , distance: 15)
        floatingAnimation(targetView: jupiterImage , distance: 100)
        floatingAnimation(targetView: venusImage   , distance: 50)
        floatingAnimation(targetView: neptuneImage , distance: 80)
        
        rotate360Animation(targetView: worldImage)
        rotate360Animation(targetView: moonImage)
        rotate360Animation(targetView: jupiterImage)
        rotate360Animation(targetView: venusImage)
        rotate360Animation(targetView: neptuneImage)
        setupViews()
    }
    
    func floatingAnimation(targetView: UIImageView , distance: CGFloat) {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            targetView.center.y += distance
        }

    }
    
    func rotate360Animation(targetView: UIImageView) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
            targetView.transform = CGAffineTransform.identity.rotated(by: .pi  )
        } completion: { (_) in
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                targetView.transform = CGAffineTransform.identity.rotated(by: .pi * 2 )
            } completion: { (_) in
                self.rotate360Animation(targetView: targetView)
            }

        }

    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    func setupViews() {
        
        signinView.layer.cornerRadius = 10
        signupView.layer.cornerRadius = 10
        
        signinButton.layer.cornerRadius = 10
        signupButton.layer.cornerRadius = 10
        
        signinView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        signupView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        signinView.layer.shadowOpacity = 0.2
        signupView.layer.shadowOpacity = 0.2
        signinView.layer.shadowOffset = CGSize(width: 0.5, height: 0.2)
        signupView.layer.shadowOffset = CGSize(width: 0.5, height: 0.2)
        signinView.layer.shadowRadius = 5
        signupView.layer.shadowRadius = 5
        
    }
    
    
    @IBOutlet weak var registrationSwitch: UISegmentedControl!
    @IBAction func switchDidChangeValue(_ sender: Any) {
        switch registrationSwitch.selectedSegmentIndex {
        case 0:
            // show the sign in view
        print("show the sign in view")
            UIView.animate(withDuration: 1) {
                self.signinView.alpha = 1
                self.signupView.alpha = 0
                self.signupCenterxLayoutConstraint.constant = -self.view.frame.width
                self.signupCenteryLayoutConstraint.constant = -self.view.frame.height
                self.signinCenterxLayoutConstraint.constant = 0
                self.signinCenteryLayoutConstraint.constant = 0
                self.view.layoutIfNeeded()
            }
            
        case 1:
            print("show the sign up view")
            UIView.animate(withDuration: 1) {
                self.signupView.alpha = 1
                self.signinView.alpha = 0
                self.signupCenterxLayoutConstraint.constant = 0
                self.signupCenteryLayoutConstraint.constant = 0
                self.signinCenterxLayoutConstraint.constant = self.view.frame.width
                self.signinCenteryLayoutConstraint.constant = self.view.frame.height
                self.view.layoutIfNeeded()
            }
            
        default:
            print("error")
        }
    }
    
    
    @IBAction func signinButton(_ sender: Any) {
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
    }
    
    func userDidLogin() {
        
    }
    
    
}

