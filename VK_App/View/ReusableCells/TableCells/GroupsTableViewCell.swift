//
//  UsersTableViewCell.swift
//  VK_App
//
//  Created by admin on 26.12.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    @IBOutlet weak var groupPic: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    
    func configure(group: Group) {
        groupPic.image = group.groupPic
        groupName.text = group.groupName

        groupPic.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch: UITouch = touches.first as! UITouch
        if (touch.view == groupPic) {
            UIView.animate(
                withDuration: 2,
                delay: 0,
                usingSpringWithDamping: 0.3,
                initialSpringVelocity: 0.4,
                options: .curveLinear,
                animations: {self.groupPic.bounds.size = CGSize(width: 70, height: 70)},
                completion: nil)
        }
    }
//
//    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
//        let tappedImage = tapGestureRecognizer.view as! UIImageView
//        UIView.animate(
//            withDuration: 2,
//            delay: 0,
//            options: .curveLinear,
//            animations: {tappedImage.bounds.size = CGSize(width: 50, height: 50)},
//            completion: nil)
//    }
    
    
}
