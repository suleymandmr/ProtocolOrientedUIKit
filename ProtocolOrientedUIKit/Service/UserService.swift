//
//  UserService.swift
//  ProtocolOrientedUIKit
//
//  Created by eyüp yaşar demir on 19.07.2023.
//

import Foundation

protocol UserService {
    func fetchUser(completion: @escaping(Result<User,Error>)-> Void)
}
