//
//  ViewController.swift
//  Week05
//
//  Created by eunseo on 2022/10/21.
//

import UIKit
import Lottie

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var sectionHeader = ["MemoData Header", "ExampleData Header"]
    var sectionFooter = ["MemoData footer", "ExampleData footer"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoData.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return sectionHeader.count
        }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sectionFooter[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let memoCell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        
        if indexPath.section == 0 {
        memoCell.titleLabel.text = memoData[indexPath.row].title
        memoCell.timeLabel.text = memoData[indexPath.row].time
        memoCell.contentLabel.text = memoData[indexPath.row].content
        } else if indexPath.section == 1 {
            memoCell.titleLabel.text = exampleData[indexPath.row].title
            memoCell.timeLabel.text = exampleData[indexPath.row].time
            memoCell.contentLabel.text = exampleData[indexPath.row].content
        } else {
            return UITableViewCell()
        }
        
        return memoCell
    }
    

    @IBOutlet weak var memoTableView: UITableView!
    let refreshControl = UIRefreshControl()

    lazy var lottieView: LottieAnimationView = {
        let animationView = LottieAnimationView(name: "lottie-indicator")
            animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
            let centerX = UIScreen.main.bounds.width / 2 - 10
            animationView.center = CGPoint(x: centerX, y: 40)
            animationView.contentMode = .scaleAspectFit
            animationView.stop()
            animationView.isHidden = true
            return animationView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memoTableView.delegate = self
        memoTableView.dataSource = self
        
        initRefreshControl()
    }
    
    func initRefreshControl(){
        refreshControl.addSubview(lottieView)
        refreshControl.tintColor = .clear
        refreshControl.addTarget(self, action: #selector(refreshTableView(refreshControl:)), for: UIControl.Event.valueChanged) //?????? ???????????? ????????? ?????? ??? ??????????????????
        //refreshControl??? action??? ????????????. IBAction??? ?????? ???
        
        memoTableView.refreshControl = refreshControl
    }
    
    //???????????? C??? ????????? ?????? ?????? , addTarget??? ???????????? C???????????? ?????????
    @objc func refreshTableView(refreshControl: UIRefreshControl){
        //???????????? ????????? ??? ?????? ????????? ?????? ?????????
        //Update your content
        print("???????????? ???!!!!")
        //Dismiss the refresh control
        lottieView.isHidden = false
        lottieView.play()
                
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.lottieView.isHidden = true
            self.lottieView.stop()
            self.memoTableView.reloadData()
            refreshControl.endRefreshing()
        }
        //????????? ???????????? ??????
    }
    
    let memoData: [MemoDataModel]
        = [
            MemoDataModel(title: "????????? ????????? ??? ???", time: "18:28", content: "?????? ????????? ?????? ??????")
            , MemoDataModel(title: "https://m.blog.naver.com/~", time: "?????????", content: "?????? ????????? ??????")
            , MemoDataModel(title: "?????? ???????????????", time: "2022. 10. 6", content: "?????? ?????? ???????????? ?????????")
            , MemoDataModel(title: "??????", time: "2022. 9. 25", content: "?????? ?????? ?????????")
            , MemoDataModel(title: "????????? ??????", time: "2022. 9. 21", content: "????????? ?????? ????????????")
            , MemoDataModel(title: "OT PPT", time: "2022. 9. 18", content: "?????? ????????? ??????")
            , MemoDataModel(title: "?????? ?????????", time: "2022. 9. 6", content: "?????????2 ?????? 1500ml")
        ]
    let exampleData: [MemoDataModel]
    = [
        MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "?????? table view", time: "2022. 8. 23", content: "memo table view and cell practice")
        ]


}

struct MemoDataModel{
    let title: String
    let time: String
    let content: String
}

