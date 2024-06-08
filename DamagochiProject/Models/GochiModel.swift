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
        let result = (Self.gochiRice / 5) + (Self.gochiWater / 2)
        
        return result / 10
    }
    static var getImage: String {
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


