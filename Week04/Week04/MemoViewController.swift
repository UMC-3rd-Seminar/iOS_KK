//
//  MemoViewController.swift
//  Week04
//
//  Created by eunseo on 2022/10/15.
//

import UIKit

class MemoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memodata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let memoCell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        
        memoCell.photo.image = memodata[indexPath.row].photo
        memoCell.titleLabel.text = memodata[indexPath.row].title
        memoCell.locationLabel.text = memodata[indexPath.row].location
        memoCell.descrLabel.text = memodata[indexPath.row].descr
        
        if indexPath.row == 3 {
            memoCell.backgroundColor = .green
        } else {
            memoCell.backgroundColor = .clear
        }
        return memoCell
    }
    

    @IBOutlet weak var memoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        memoTableView.delegate = self
        memoTableView.dataSource = self
    }

    let memodata: [MemoDataModel] = [
        MemoDataModel(photo: UIImage(named: "plum"), title: "자두맛집", location: "서울시 광진구 자양3동", descr: "자두 맛있당 헤헤"),
        MemoDataModel(photo: UIImage(named: "chamchi"), title: "이건 못 참취나물집", location: "서울시 성북구 하월곡동", descr: "이건 정말 못 참취나물"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다"),
        MemoDataModel(photo: UIImage(named: "yang"), title: "맛집메모장", location: "제주도 서귀포시 어쩌고", descr: "맛집 메모 테스트 중입니다")
        
    ]

}

struct MemoDataModel{
    let photo: UIImage?
    let title: String
    let location: String
    let descr: String
}
