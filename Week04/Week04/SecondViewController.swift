//
//  SecondViewController.swift
//  Week04
//
//  Created by eunseo on 2022/10/15.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    var delegate: labelChangeProtocol? //=firstViewController가 됨 //type이 protocol, 옵셔널로 정의
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backBtnDidTap(_ sender: Any) {
        guard let textField = textField.text else {return}
        
        delegate?.onChange(text: textField) //자식뷰에서 실행, parameter textField값
        
        dismiss(animated: true)
    }
    

}
