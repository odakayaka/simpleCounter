//
//  TableViewCell.swift
//  SimpleCounter
//
//  Created by 尾高文香 on 2016/07/04.
//  Copyright © 2016年 com.odakaayaka. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var number:Int = 0
    
    @IBOutlet var doLabel: UILabel!
    @IBOutlet var countLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func doTapped(){
        number = number + 1
        countLabel.text = String(number)
    }
}
