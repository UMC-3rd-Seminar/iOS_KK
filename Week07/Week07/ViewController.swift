//
//  ViewController.swift
//  Week07
//
//  Created by eunseo on 2022/11/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginBtnDidTap(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        print("이름: \(name), 비밀번호: \(password)")
        if UserDefaults.standard.string(forKey: name) == nil {
            print ("데이터가 없습니다.")
        } else if password != UserDefaults.standard.string(forKey: name) {
            print("비밀번호가 알맞지 않습니다.")
        } else {
            print ("로그인 성공!")
        }
        
        
    }
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        guard let signUpViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
        else {return}
        
        navigationController?.pushViewController(signUpViewController, animated: true)
        
    }
    
}

