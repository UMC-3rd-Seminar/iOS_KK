//
//  KakaoTalkTableViewCell.swift
//  Week04
//
//  Created by eunseo on 2022/10/15.
//

import UIKit

class KakaoTalkTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var memberCountLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var messageCountBackgroundView: UIView!
    @IBOutlet weak var messageCountLabel: UILabel!
    
    //viewDidLoad()와 동일, LifeCycle method
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 17.5
        messageCountBackgroundView.layer.cornerRadius = 12
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    


}
