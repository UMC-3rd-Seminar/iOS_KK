//
//  ViewController.swift
//  Week06
//
//  Created by eunseo on 2022/11/03.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    
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
            
        let url = URL(string: "https://i.ytimg.com/vi/NajU2NJrvws/maxresdefault.jpg")
        resultLabel.text = "이미지 다운로드 중!"
        imageView.load(url: url!, lab: resultLabel!)
    }
        
    func threadTest(){
        DispatchQueue.global().async {
            for color in self.colorList{
                DispatchQueue.main.async {
                    self.timer.textColor = color
                }
                sleep(1)
            }
        }
        
        DispatchQueue.global().async {
            for i in (0...10).reversed(){
                DispatchQueue.main.async {
                    self.timer.text = String(i)
                }
                sleep(1)
            }
            DispatchQueue.main.async {
                self.resultLabel.text = "타이머 종료!"
            }
        }
    }
    
}
extension UIImageView {
    func load(url: URL, lab: UILabel) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                        lab.text = "이미지 다운로드 완료!"
                    }
                }
            }
        }
    }
}

