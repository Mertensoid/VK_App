//
//  NewsTextTableCell.swift
//  VK_App
//
//  Created by admin on 20.01.2022.
//

import UIKit

class NewsTextTableCell: UITableViewCell {

    @IBOutlet weak var newsTextLabel: UILabel!
    
    override func prepareForReuse() {
        if self.newsTextLabel.bounds.height >= 100 {
            print("aliluya")
        }
    }
    
    func configure(text: String) {
        newsTextLabel.text = text
    }
    
}
