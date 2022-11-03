//
//  GroupViewModel.swift
//  VK_App
//
//  Created by admin on 09.06.2022.
//

import Foundation
import UIKit

struct GroupViewModel {
    let groupName: String
    let groupPic: UIImage?
}

class GroupViewModelFactory {

    let photoService = PhotoService()
    
    func constructViewModels(from groups: [GroupData]) -> [GroupViewModel] {
        return groups.compactMap(self.generateViewModel)
    }
    
    func generateViewModel(from groupData: GroupData) -> GroupViewModel{
        let viewModelName = groupData.groupName
        let photo = photoService.photo(byURL: groupData.groupPic)
        return GroupViewModel(groupName: viewModelName, groupPic: photo)
    }
}


