//
//  ViewController.swift
//  Week05
//
//  Created by eunseo on 2022/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let memoCell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        
        memoCell.titleLabel.text = memoData[indexPath.row].title
        memoCell.timeLabel.text = memoData[indexPath.row].time
        memoCell.contentLabel.text = memoData[indexPath.row].content
        
        return memoCell
    }
    

    @IBOutlet weak var memoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memoTableView.delegate = self
        memoTableView.dataSource = self
        
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

