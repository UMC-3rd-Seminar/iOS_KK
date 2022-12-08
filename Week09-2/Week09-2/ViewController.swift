//
//  ViewController.swift
//  Week09-2
//
//  Created by eunseo on 2022/11/25.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

class ViewController: UIViewController {
    @IBOutlet weak var loginSuccessLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kakaoLogin(_ sender: Any) {
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoAccount() success.")
                    self.loginSuccessLabel.text = "로그인 성공!"
                    
                    UserApi.shared.me() {(user, error) in
                        if let error = error {
                            print(error)
                        }
                        else {
                            print("me() success.")
                            guard let name = user?.kakaoAccount?.profile?.nickname else {return}
                            self.loginSuccessLabel.text = "\(name)  님 환영합니다!"
                            //do something
                            _ = user
                        }
                    }

                    //do something
                    _ = oauthToken
                }
            }
        
        
    }
    
}

