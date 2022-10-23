//
//  ViewController.swift
//  Week03
//
//  Created by eunseo on 2022/10/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var btnOperator: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        let addMenu = UIAction(title: "확인", handler: { _ in print("확인") })
        let subMenu = UIAction(title: "확인", handler: { _ in print("확인") })
        let mulMenu = UIAction(title: "확인", handler: { _ in print("확인") })
        let divMenu = UIAction(title: "확인", handler: { _ in print("확인") })
        
    
        btnOperator.menu = UIMenu(title: "select operator",
                                  identifier: nil,
                                  options: .displayInline,
                                  children: [addMenu, subMenu, mulMenu, divMenu])
        
        btnOperator.changesSelectionAsPrimaryAction = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    
    
    
    
    
    @IBAction func btnDidTap(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        // 덧셈해서 다음 뷰에 넘기는 로직
        guard let firstNum = firstTextField.text
        else {return}
        guard let secondNum = secondTextField.text else
        {return}
        
        //덧셈결과 담기
        let result = Int(firstNum)! + Int(secondNum)!
        //뺄셈
        let subResult = Int(firstNum)! - Int(secondNum)!
        //곱셈
        let mulResult = Int(firstNum)! * Int(secondNum)!
        //나눗셈
        let divResult = Int(firstNum)! / Int(secondNum)!
        
        nextViewController.resultString =  String(result)
        nextViewController.subResultString = String(subResult)
        nextViewController.mulResultString = String(mulResult)
        nextViewController.divResultString = String(divResult)
        
        
        
        present(nextViewController, animated: true)
    }
    


}

