//
//  SettingModel.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/9/24.
//

import Foundation
enum SettingType{
    case nickName,gochiChange,resetData
}
struct SettingModel {
    let settingType: SettingType
    let setimage: String
    let settitle: String
    let setnickName: String?
    let setimage2: String
}

let settingList = [
    SettingModel(settingType: .nickName, setimage: "pencil", settitle: "내 이름 설정하기", setnickName: UserModel.nickName, setimage2: "greaterthan"),
    SettingModel(settingType: .gochiChange, setimage: "moon.fill", settitle: "다마고치 변경하기", setnickName: nil, setimage2: "greaterthan"),
    SettingModel(settingType: .resetData, setimage: "arrow.clockwise", settitle: "데이터 초기화", setnickName: nil, setimage2: "greaterthan")
]
