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
    
    
    // sign in
    @IBOutlet weak var signinUsernameTextField: UITextField!
    @IBOutlet weak var signinPasswordTextField: UITextField!
    
    // sign up
    @IBOutlet weak var signupUsernameTextField: UITextField!
    @IBOutlet weak var signupEmailTextField: UITextField!
    @IBOutlet weak var signupPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
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
        
    }
    
    @IBAction func signinButton(_ sender: Any) {
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
    }
    
    func userDidLogin() {
        
    }
    
    
}

