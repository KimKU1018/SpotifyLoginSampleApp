//
//  MainViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by KU Kim on 2023/10/28.
//
import Foundation
import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomeLabel.text = """
        환영합니다.
        \(email)님
        """
    }
    
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
