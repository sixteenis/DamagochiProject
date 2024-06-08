//
//  StartGochGameViewController.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/8/24.
//

import UIKit

import SnapKit

class StartGochGameViewController: UIViewController {
    let gochiMessageImage = UIImageView()
    let gochiMessageLabel = UILabel()
    let gochiImage = UIImageView()
    let gochiNameLabel = UILabel()
    let gochiState = UILabel()
    
    let gochiRiceTextField = UITextField()
    let gochiRiceLine = UIView()
    let gochiRiceButton = UIButton()
    
    let gochiWaterTextField = UITextField()
    let gochiWaterLine = UIView()
    let gochiWaterButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHierarch()
        setUpLayout()
        setUpUI()
    }
    
    // MARK: - connect 부분
    func setUpHierarch() {
        view.addSubview(gochiMessageImage)
        gochiMessageImage.addSubview(gochiMessageLabel)
        view.addSubview(gochiImage)
        view.addSubview(gochiNameLabel)
        view.addSubview(gochiState)
        view.addSubview(gochiRiceTextField)
        view.addSubview(gochiRiceLine)
        view.addSubview(gochiRiceButton)
        view.addSubview(gochiWaterTextField)
        view.addSubview(gochiWaterLine)
        view.addSubview(gochiWaterButton)
        
    }
    
    // MARK: - Layout 부분
    func setUpLayout() {
        gochiMessageImage.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.bottom.equalTo(gochiImage.snp.top).offset(-10)
        }
        gochiMessageLabel.snp.makeConstraints { make in
            make.center.equalTo(gochiMessageImage)
            make.height.equalTo(gochiMessageImage.snp.height).inset(20)
            make.width.equalTo(gochiMessageImage.snp.width).inset(10)
        }
        gochiImage.snp.makeConstraints { make in
            make.centerY.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(90)
            make.height.equalTo(gochiImage.snp.width)
        }
        gochiNameLabel.snp.makeConstraints { make in
            make.top.equalTo(gochiImage.snp.bottom).offset(8)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        gochiState.snp.makeConstraints { make in
            make.top.equalTo(gochiNameLabel.snp.bottom).offset(8)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        gochiRiceTextField.snp.makeConstraints { make in
            make.top.equalTo(gochiState.snp.bottom).offset(30)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(140)
            make.trailing.equalTo(gochiRiceButton.snp.leading).inset(-10)
        
            //make.width.equalTo(100)
        }
        gochiRiceLine.snp.makeConstraints { make in
            make.top.equalTo(gochiRiceTextField.snp.bottom).offset(10)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(80)
            make.trailing.equalTo(gochiRiceButton.snp.leading).inset(-10)
            make.height.equalTo(1)
        }
        gochiRiceButton.snp.makeConstraints { make in
            make.leading.equalTo(gochiRiceTextField.snp.trailing).inset(10)
            make.top.equalTo(gochiState.snp.bottom).offset(30)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(60)
            make.height.equalTo(35)
            make.width.equalTo(70)
        }
        
        gochiWaterTextField.snp.makeConstraints { make in
            make.top.equalTo(gochiRiceLine.snp.bottom).offset(30)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(140)
            make.trailing.equalTo(gochiWaterButton.snp.leading).inset(-10)
        
            //make.width.equalTo(100)
        }
        gochiWaterLine.snp.makeConstraints { make in
            make.top.equalTo(gochiWaterTextField.snp.bottom).offset(10)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(80)
            make.trailing.equalTo(gochiWaterButton.snp.leading).inset(-10)
            make.height.equalTo(1)
        }
        gochiWaterButton.snp.makeConstraints { make in
            make.leading.equalTo(gochiWaterTextField.snp.trailing).inset(10)
            make.top.equalTo(gochiRiceLine.snp.bottom).offset(30)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(60)
            make.height.equalTo(35)
            make.width.equalTo(70)
        }
    }
    
    // MARK: - UI 세팅 부분
    func setUpUI() {
        view.backgroundColor = .gochiBackgroundColor
        
        gochiMessageImage.image = .bubble
        gochiImage.contentMode = .scaleAspectFill
        
        gochiMessageLabel.text = "ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
        gochiMessageLabel.numberOfLines = 0
        
        gochiImage.image = ._1_2
        
        gochiNameLabel.text = "11111"
        
        gochiState.text = "상태창ㅇㅇㅇㅇㅇ"
        
        gochiRiceTextField.contentMode = .center
        gochiRiceTextField.placeholder = "밥주세용"
        
        gochiRiceLine.backgroundColor = .black
        
        gochiRiceButton.setTitle("wasd", for: .normal)
        gochiRiceButton.setTitleColor(.gochiFontColor, for: .normal)
        gochiRiceButton.backgroundColor = .red
        
        gochiWaterTextField.contentMode = .center
        gochiWaterTextField.placeholder = "밥주세용"
        
        gochiWaterLine.backgroundColor = .black
        
        gochiWaterButton.setTitle("wasd", for: .normal)
        gochiWaterButton.setTitleColor(.gochiFontColor, for: .normal)
        gochiWaterButton.backgroundColor = .red
        
        
    }

}
