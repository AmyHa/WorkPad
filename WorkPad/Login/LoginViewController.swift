//
//  LoginViewController.swift
//  WorkPod
//
//  Created by Amy Ha on 24/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet var textFields: [UITextField]!

    @IBAction func closeButtonClicked(_ sender: Any) {
        closePage()
    }
    @IBAction func loginButtonClicked(_ sender: Any) {
        navigateToHomePage()
    }
        
    override func viewDidLoad() {
        applyStyle()
        
    }
    
    private func applyStyle() {
        // background
        view.backgroundColor = Color.background.color
        
        // close button
        self.closeButton.setImage(UIImage(named: "close-icon.png"), for: .normal)
        self.closeButton.tintColor = UIColor.white
        
        // textfields
        applyTextFieldUnderline()
        
    }
    
    // Apply border underline on textfields
    private func applyTextFieldUnderline() {
        for textField in textFields {
            textField.addLine(position: .LINE_POSITION_BOTTOM, color: Color.whiteFont.color, width: 1)
        }
    }
    
    private func closePage() {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func navigateToHomePage() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        guard let homePageVC = mainStoryboard.instantiateViewController(withIdentifier: "HomePageViewController") as? HomePageViewController
            else { return }
        homePageVC.modalPresentationStyle = .fullScreen
        homePageVC.isLoggedIn = true
//        self.navigationController?.pushViewController(homePageVC, animated: true)
         present(homePageVC, animated: true, completion: nil)
    }
}
