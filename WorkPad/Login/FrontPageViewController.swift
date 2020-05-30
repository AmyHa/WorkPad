//
//  LoginViewController.swift
//  WorkPod
//
//  Created by Amy Ha on 16/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import UIKit
import Foundation
class FrontPageViewController: UIViewController {
    
    @IBOutlet
    weak var officeImage: UIImageView!
    @IBOutlet
    weak var label: UILabel!
    @IBOutlet
    weak var loginButton: UIButton!
    @IBOutlet
    weak var signUpButton: UIButton!
    
    @IBAction func signUpButtonClicked(_ sender: Any) {
        print("lalala")
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        self.navigateToLoginPage()
    }
    
    override func viewDidLoad() {
        // background
        view.backgroundColor = Color.background.color
        officeImage.image = UIImage(named: "office_image.pdf")
        officeImage.contentMode = .scaleAspectFill
        officeImage.alpha = 1
        
        // apply font colour
        label.textColor = Color.whiteFont.color
        loginButton.setTitleColor(Color.whiteFont.color, for: .normal)
        signUpButton.setTitleColor(Color.whiteFont.color, for: .normal)
    }
    
    private func navigateToLoginPage() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let loginVC = mainStoryboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
            else { return }
        present(loginVC, animated: true, completion: nil)
    }
}
