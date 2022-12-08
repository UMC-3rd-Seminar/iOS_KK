//
//  SignUpViewController.swift
//  Week07
//
//  Created by eunseo on 2022/11/10.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        guard let name = nameTextField.text else{return}
        guard let password = passwordTextField.text else {return}
        
        
        //UserDefaults의 standard 객체에 접근
        UserDefaults.standard.set(password, forKey: name)
        
        print("이름: \(name), 비밀번호: \(password)")
        navigationController?.popViewController(animated: true)
    }
    @IBAction func cancelBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
