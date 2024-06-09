//
//  GochiModel.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/7/24.
//

import Foundation

struct GochiModel {
    static var gochi: String? {
        get{
            return UserDefaults.standard.string(forKey: "gochi")
        }set{
            UserDefaults.standard.setValue(newValue, forKey: "gochi")
        }
    }
    
    static var gochiWater: Int {
        get{
            return UserDefaults.standard.integer(forKey: "gochiWater")
        }set{
            let before = UserDefaults.standard.integer(forKey: "gochiWater") + newValue
            UserDefaults.standard.setValue(before, forKey: "gochiWater")
        }
    }
    
    static var gochiRice: Int {
        get{
            return UserDefaults.standard.integer(forKey: "gochiRice")
        }set{
            let before = UserDefaults.standard.integer(forKey: "gochiRice") + newValue
            UserDefaults.standard.setValue(before, forKey: "gochiRice")
        }
        
    }
    static var getLevel: Int {
        let result = (Self.gochiRice / 5) + (Self.gochiWater / 2) / 10
        print(result)
        return result
    }
    static var getGochiNum: String {
        switch gochi {
        case "따끔따끔 다마고치":
            return "1"
        case "방실방실 다마고치":
            return "2"
        case "반짝반짝 다마고치":
            return "3"
        default:
            return "??"
        }
    }
    static var getGochiLevelNum: String{
        switch getLevel{
        case 0...19:
            return "1"
        case 20...29:
            return "2"
        case 30...39:
            return "3"
        case 40...49:
            return "4"
        case 50...59:
            return "5"
        case 60...69:
            return "6"
        case 70...79:
            return "7"
        case 80...89:
            return "8"
        case 90...99:
            return "9"
        default:
            return "9"
        }
    }
    static var stateText: String {
        return "LV\(GochiModel.getGochiLevelNum), 밥알 \(GochiModel.gochiRice)개, 물방울 \(GochiModel.gochiWater)개"
    }
    static func reset() {
        UserDefaults.standard.setValue(0, forKey: "gochiRice")
        UserDefaults.standard.setValue(0, forKey: "gochiWater")
        self.gochi = nil
        
    }
}
struct Gochi{
    let name: String
    let Image: String
    let details: String
}

let gochiList: [Gochi] = [
    Gochi(name: "따끔따끔 다마고치", Image: "1-6", details: "따끔이는 어쩌구 저쩌구 합니다잉~"),
    Gochi(name: "방실방실 다마고치", Image: "2-6", details: "방실이는 어쩌구 저쩌구 합니다잉~"),
    Gochi(name: "반짝반짝 다마고치", Image: "3-6", details: "반짝이는 어쩌구 저쩌구 합니다잉~"),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: ""),
    Gochi(name: "준비중이에요", Image: "noImage", details: "")
    ]


