//
//  ViewController.swift
//  Week06
//
//  Created by eunseo on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    var colorList: [UIColor] = [
        .green,
        .blue,
        .darkGray,
        .systemMint,
        .orange,
        .red,
        .systemPink,
        .purple,
        .gray,
        .yellow,
        .brown
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        threadTest()
    }
    
    func threadTest(){
//        DispatchQueue.global().async {
//            for color in self.colorList{
//                DispatchQueue.main.sync {
//                    self.firstView.backgroundColor = color
//                }
//                sleep(1)
//            }
//        }
//
//        DispatchQueue.global().async {
//            for color in self.colorList.reversed(){
//                DispatchQueue.main.sync {
//                    self.secondView.backgroundColor = color
//                }
//                sleep(1)
//            }
//        }
        DispatchQueue.global().sync {
            for i in 1...10{
                print(i)
            }
        }
        DispatchQueue.global().sync {
            for i in 11...20{
                print(i)
            }
        }
    }
    
    


}

