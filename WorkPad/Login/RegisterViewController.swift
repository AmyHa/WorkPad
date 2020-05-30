//
//  RegisterViewController.swift
//  WorkPod
//
//  Created by Amy Ha on 17/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    // Text fields
    @IBOutlet var textFields: [UITextField]!
    
    @IBOutlet weak var termsLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var thankYouLabel: UILabel!
    
    @IBOutlet weak var accountIconImageView: UIImageView!
    @IBOutlet weak var emailIconImageView: UIImageView!
    @IBOutlet weak var passwordIconImageView: UIImageView!
    
    @IBOutlet weak var checkboxButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    
    @IBAction func checkboxButtonClicked(_ sender: Any) {
        let button = sender as! UIButton
        selectCheckBox(button: button)
    }
    @IBAction func registerButtonClicked(_ sender: Any) {
        registerAccount()
    }
    @IBAction func loginButtonClicked(_ sender: Any) {
        navigateToLoginPage()
    }
    @IBAction func closeButtonClicked(_ sender: Any) {
        self.closePage()
    }
    
    private var isCheckboxSelected: Bool = false
    
    override func viewDidLoad() {
        self.applyStyle()
    }
    
    // Apply border underline on textfields
    private func applyTextFieldUnderline() {
        for textField in textFields {
            textField.addLine(position: .LINE_POSITION_BOTTOM, color: Color.whiteFont.color, width: 1)
        }
    }
    
    private func applyStyle() {
        // background
        view.backgroundColor = Color.background.color
        applyTextFieldUnderline()
        
        // Label and buttons
        self.termsLabel.textColor = Color.whiteFont.color
        self.registerButton.setTitleColor(Color.whiteFont.color, for: .normal)
        self.loginButton.isHidden = true
        self.thankYouLabel.isHidden = true
        self.thankYouLabel.textColor = Color.whiteFont.color
        
        // icons
        self.accountIconImageView.image = UIImage(named: "account-icon.png")
        self.emailIconImageView.image = UIImage(named: "email-icon.png")
        self.passwordIconImageView.image = UIImage(named: "password-icon.png")
        
        // logo
        self.logoImageView.image = UIImage(named: "logo.png")
        
        // checkbox
        self.checkboxButton.setImage(UIImage(named: "checkbox-outline-icon.png"), for: .normal)
        self.checkboxButton.tintColor = UIColor.white
        
        // close button
        self.closeButton.setImage(UIImage(named: "close-icon.png"), for: .normal)
        self.closeButton.tintColor = UIColor.white

    }
    
    private func selectCheckBox(button: UIButton) {
        let imageName = isCheckboxSelected == false ? "checkbox-icon.png" : "checkbox-outline-icon.png"
        isCheckboxSelected = !isCheckboxSelected
        checkboxButton.setImage(UIImage(named: imageName), for: .normal)
    }
    
    private func registerAccount() {
        // does some stuff e.g. create User objects and send to the backend
        
        // clear text fields
        for textField in textFields {
            textField.text = ""
        }
        
        // show hidden objects
        self.thankYouLabel.isHidden = false
        self.loginButton.isHidden = false
    }
    
    private func closePage() {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func navigateToLoginPage() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let loginVC = mainStoryboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
            else { return }
        present(loginVC, animated: true, completion: nil)
    }
}

