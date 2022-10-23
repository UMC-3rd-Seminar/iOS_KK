//
//  KaKaoTalkViewController.swift
//  Week04
//
//  Created by eunseo on 2022/10/15.
//

import UIKit

class KaKaoTalkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chattingRoomData.count//한 섹션안에 들어갈 행의 개수, 채팅방의 개수, 테이블 뷰에 깔릴 개수
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "KakaoTalkTableViewCell", for: indexPath) as? KakaoTalkTableViewCell else {return UITableViewCell()}
        
        //cell.nameLabel = "홍길동" hardcoding
        cell.nameLabel.text = chattingRoomData[indexPath.row].name
        cell.profileImageView.image = chattingRoomData[indexPath.row].profileImage
        cell.lastMessageLabel.text = chattingRoomData[indexPath.row].lastMessage
        if let memberCount = chattingRoomData[indexPath.row].memberCount{
            cell.memberCountLabel.text = memberCount
        }else {
            cell.memberCountLabel.isHidden = true
        }
        
        cell.timeLabel.text = chattingRoomData[indexPath.row].time
        cell.messageCountLabel.text = chattingRoomData[indexPath.row].msgCount
        
        return cell//테이블 뷰에 넣을 셀
    }
    //tableViewDelegate 프로토콜 채택, Data를 집어넣어주는 소스
    @IBOutlet weak var kakaoTalkTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kakaoTalkTableView.delegate = self
        kakaoTalkTableView.dataSource = self
    }
    
    let chattingRoomData: [ChattingRoomDataModel] = [
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이들 단톡방",
            lastMessage: "사진을 보냈습니다.",
            memberCount: "200",
            time: "오전 2:57",
            msgCount: "64"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "github"),
            name: "깃허브 스터디 단톡방",
            lastMessage: "사진을 보냈습니다.",
            memberCount: "50",
            time: "오전 2:30",
            msgCount: "5"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        ),
        ChattingRoomDataModel(
            profileImage: UIImage(named: "somsom"),
            name: "솜솜이  개인톡",
            lastMessage: "자니...?",
            memberCount: nil,
            time: "오전 2:57",
            msgCount: "1"
        )
       
        
        
    ]


}

struct ChattingRoomDataModel{
    let profileImage: UIImage?
    let name: String
    let lastMessage: String
    let memberCount: String?
    let time: String
    let msgCount: String
}
