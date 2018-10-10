//
//  VideoCell.swift
//  PlayLocalVideo
//
//  Created by Zhuoqi Tu on 2018/10/10.
//  Copyright © 2018 卓奇 屠. All rights reserved.
//

import UIKit

struct video {
    let image: String
    let title: String
    let source: String
}

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoSourceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
