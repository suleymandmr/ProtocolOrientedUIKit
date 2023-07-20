//
//  UserViewModelOutput.swift
//  ProtocolOrientedUIKit
//
//  Created by eyüp yaşar demir on 19.07.2023.
//

import Foundation

protocol UserViewModelOutput : AnyObject{
    
    func updateView(name: String, email: String, username: String)
    
}
