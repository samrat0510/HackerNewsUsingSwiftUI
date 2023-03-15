//
//  NewsCell.swift
//  HackerNews
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit
class NewsCell : UITableViewCell {
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var pointsLabel : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(title:String?, points: Int?){
        titleLabel.text = title ?? ""
        pointsLabel.text = points?.codingKey.stringValue ?? ""
    }
}
