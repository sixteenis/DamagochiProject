//
//  ViewController+.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/10/24.
//

import UIKit
extension UIViewController{
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
