//
//  HomePageViewController.swift
//  WorkPod
//
//  Created by Amy Ha on 25/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    var isRegistered: Bool = false
    var isLoggedIn: Bool = false
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        if !isRegistered && !isLoggedIn {
            navigateToFrontPage()
        }
    }
    
    private func navigateToFrontPage() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let frontPageVC = mainStoryboard.instantiateViewController(withIdentifier: "FrontPageViewController") as? FrontPageViewController
            else { return }
        frontPageVC.modalPresentationStyle = .fullScreen
//        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.pushViewController(frontPageVC, animated: true)
//        present(frontPageVC, animated: true, completion: nil)
    }
}
