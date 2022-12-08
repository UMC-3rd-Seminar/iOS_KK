//
//  ViewController.swift
//  Week09
//
//  Created by eunseo on 2022/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        RequestFile().getRequestData(self)
    }

}

extension ViewController{
    func didSuccess(_ response: DataModel){
        
        let temp = response.response.body?.items.item[0].fcstValue
        self.tempLabel.text = temp
        
    }
}
