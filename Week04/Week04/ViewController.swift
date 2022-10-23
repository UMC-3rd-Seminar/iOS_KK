//
//  ViewController.swift
//  Week04
//
//  Created by eunseo on 2022/10/14.
//

import UIKit

//protocol delegate Design Pattern
protocol labelChangeProtocol{ //메뉴얼의 제목
    func onChange(text: String) //함수 특징 : 구현부가 들어가있지 않음, 최소 요구사항 (함수)
    //메모리에 올라가 사용할 준비까지만 되어있음
}

class ViewController: UIViewController, labelChangeProtocol { //프로토콜을 부모뷰에서 채택! == 이 메뉴얼을 따르겠다. -> 최소 요구사항까지 구현해야함!
    func onChange(text: String) {
        label.text = text
    } //부모뷰에서는 정의만 해놓기, 실제로는 자식뷰가 *대신*해서 사용 및 처리

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnDidTap(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        nextViewController.modalPresentationStyle = .fullScreen
        nextViewController.delegate = self //초기화, 넘어가기전에 대리자가 자기 자신이라는 선언이 꼭 필요함, present 되기 전에
        
        present(nextViewController, animated: true)
        
    }
    

}

