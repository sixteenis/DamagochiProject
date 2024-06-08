//
//  UserModel.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/8/24.
//

import Foundation

struct UserModel{
    static var nickName: String? {
        get{
            return UserDefaults.standard.string(forKey: "nickName")
        }set{
            UserDefaults.standard.setValue(newValue, forKey: "nickName")
        }
    }
}
