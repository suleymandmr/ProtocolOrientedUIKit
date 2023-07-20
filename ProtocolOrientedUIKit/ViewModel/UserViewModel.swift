//
//  UserViewModel.swift
//  ProtocolOrientedUIKit
//
//  Created by eyüp yaşar demir on 19.07.2023.
//

import Foundation

class UserViewModel {
    
    private let userService: UserService
    weak var output: UserViewModelOutput?
    
    init(userService: UserService) {
        self.userService = userService
    }
    
    func fetchUser() {
        
        userService.fetchUser { [weak self] result in
            switch result{
            case .success(let user):
                self?.output?.updateView(name: user.name, email: user.email, username: user.username)
            case .failure(_):
                self?.output?.updateView(name: "No user", email: "", username: "")
                
            }
        }
        
    }
    
}
