//
//  SecondViewController.swift
//  Week03
//
//  Created by eunseo on 2022/10/05.
//

import UIKit

class SecondViewController: UIViewController {

    var resultString = ""//덧셈의 결과가 담길 예정!
    var subResultString = "" //뺄셈
    var mulResultString = "" //곱셈
    var divResultString = "" //나눗셈
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var subResult: UILabel!
    @IBOutlet weak var mulResult: UILabel!
    @IBOutlet weak var divResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = resultString
        subResult.text = subResultString
        mulResult.text = mulResultString
        divResult.text = divResultString
    }
    

}
