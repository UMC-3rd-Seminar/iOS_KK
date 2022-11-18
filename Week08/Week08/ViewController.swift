//
//  ViewController.swift
//  Week08
//
//  Created by eunseo on 2022/11/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var blueViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var blueViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet var blueViewTapGestureRecognizer: UITapGestureRecognizer!
    var flag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        blueViewTapGestureRecognizer.addTarget(self, action: #selector(blueViewDidTap))
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        UIView.animate(withDuration: 3,animations: {
            self.blueViewTopConstraint.constant = 50
            self.blueViewHeightConstraint.constant = 500
            //화면 update 코드 추가해야 눈에 보임
            self.view.layoutIfNeeded()
        })
    }
    
    @objc func blueViewDidTap(){
        if !flag {
            UIView.animate(withDuration: 3,animations: {
                self.blueViewTopConstraint.constant = 50
                self.blueViewHeightConstraint.constant = 500
                self.blueView.backgroundColor = .orange
                //view update
                self.view.layoutIfNeeded()
            }, completion: { _ in self.flag = true})
        } else {
            UIView.animate(withDuration: 3,animations: {
                self.blueViewTopConstraint.constant = 200
                self.blueViewHeightConstraint.constant = 128
                self.blueView.backgroundColor = .systemTeal
                //view update
                self.view.layoutIfNeeded()
            }, completion: { _ in self.flag = false})
        }
        
    }
    
}

