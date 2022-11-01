//
//  ViewController.swift
//  Week05
//
//  Created by eunseo on 2022/10/21.
//

import UIKit
import Lottie

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var sectionHeader = ["1 section header", "2 section header"]
    var sectionFooter = ["1 section footer", "2 section footer"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sectionFooter[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let memoCell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        
        memoCell.titleLabel.text = memoData[indexPath.row].title
        memoCell.timeLabel.text = memoData[indexPath.row].time
        memoCell.contentLabel.text = memoData[indexPath.row].content
        
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
        refreshControl.addTarget(self, action: #selector(refreshTableView(refreshControl:)), for: UIControl.Event.valueChanged) //값이 변경되는 부분이 생길 때 작동시키겠다
        //refreshControl에 action을 부여한다. IBAction과 같은 뜻
        
        memoTableView.refreshControl = refreshControl
    }
    
    //오브젝트 C로 컴파일 되는 함수 , addTarget이 오브젝트 C기반으로 작동함
    @objc func refreshTableView(refreshControl: UIRefreshControl){
        //새로고침 작동할 때 어떤 기능을 넣을 것인가
        //Update your content
        print("새로고침 됨!!!!")
        //Dismiss the refresh control
        lottieView.isHidden = false
        lottieView.play()
                
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.lottieView.isHidden = true
            self.lottieView.stop()
            self.memoTableView.reloadData()
            refreshControl.endRefreshing()
        }
        //스레드 관리하는 내용
    }
    
    let memoData: [MemoDataModel]
        = [
            MemoDataModel(title: "까먹지 않아야 할 것", time: "18:28", content: "졸업 전시회 선물 사기")
            , MemoDataModel(title: "https://m.blog.naver.com/~", time: "수요일", content: "추가 텍스트 없음")
            , MemoDataModel(title: "교내 아이디어톤", time: "2022. 10. 6", content: "행사 당일 아이디어 브리핑")
            , MemoDataModel(title: "탈퇴", time: "2022. 9. 25", content: "탈퇴 절차 간소화")
            , MemoDataModel(title: "스터디 방법", time: "2022. 9. 21", content: "워크북 미리 받아오기")
            , MemoDataModel(title: "OT PPT", time: "2022. 9. 18", content: "추가 텍스트 없음")
            , MemoDataModel(title: "소이 베이스", time: "2022. 9. 6", content: "생크림2 두유 1500ml")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
            , MemoDataModel(title: "메모 table view", time: "2022. 8. 23", content: "memo table view and cell practice")
        ]


}

struct MemoDataModel{
    let title: String
    let time: String
    let content: String
}

