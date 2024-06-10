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
    let gochiRiceButton = UIButton(type: .system)
    
    let gochiWaterTextField = UITextField()
    let gochiWaterLine = UIView()
    let gochiWaterButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNV()
        setUpHierarch()
        setUpLayout()
        setUpUI()
        setUpButton()
    }
    override func viewWillAppear(_ animated: Bool) {
        setUpDataGochi()
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
            make.width.equalTo(80)
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
            make.width.equalTo(80)
        }
    }
    // MARK: - 네비게이션 세팅 부분
    func setUpNV() {
        
        navigationItem.title = "\(UserModel.nickName)님의 다마고치"
        
        let item = UIBarButtonItem(image: UIImage(systemName: "person.circle"),style: .plain,  target: self, action: #selector(nvButtonTapped))
        item.tintColor = .black
        navigationItem.rightBarButtonItem = item
    }
    // MARK: - UI 세팅 부분
    func setUpUI() {
        view.backgroundColor = .gochiBackgroundColor
        
        gochiMessageImage.isHidden = true
        gochiMessageLabel.isHidden = true

        gochiMessageImage.image = .bubble
        gochiImage.contentMode = .scaleAspectFill
        
        
        gochiMessageLabel.numberOfLines = 0
        
        //gochiImage.image = ._1_2
        
        //gochiNameLabel.text = "11111"
        gochiNameLabel.textAlignment = .center
        gochiNameLabel.layer.cornerRadius = 5
        gochiNameLabel.layer.borderColor = UIColor.gochiFontColor.cgColor
        gochiNameLabel.layer.borderWidth = 1
        gochiNameLabel.backgroundColor = .gochiBackgroundColor
        
        //gochiState.text = "상태창ㅇㅇㅇㅇㅇ"
        
        gochiRiceTextField.contentMode = .center
        gochiRiceTextField.placeholder = "밥주세용"
        gochiRiceTextField.keyboardType = .numberPad
        
        gochiRiceLine.backgroundColor = .black
        
        gochiRiceButton.setImage(UIImage(systemName: "drop.circle"), for: .normal)
        gochiRiceButton.setTitle("밥먹기", for: .normal)
        gochiRiceButton.tintColor = .gochiFontColor
        gochiRiceButton.backgroundColor = .gochiBackgroundColor
        gochiRiceButton.layer.cornerRadius = 10
        gochiRiceButton.layer.borderColor = UIColor.gochiFontColor.cgColor
        gochiRiceButton.layer.borderWidth = 1
        
        gochiWaterTextField.contentMode = .center
        gochiWaterTextField.placeholder = "물주세용"
        gochiWaterTextField.keyboardType = .numberPad

        gochiWaterLine.backgroundColor = .black
        
        gochiWaterButton.setImage(UIImage(systemName: "leaf.circle"), for: .normal)
        gochiWaterButton.tintColor = .gochiFontColor
        gochiWaterButton.setTitle("물먹기", for: .normal)
        gochiWaterButton.layer.cornerRadius = 10
        gochiWaterButton.layer.borderColor = UIColor.gochiFontColor.cgColor
        gochiWaterButton.layer.borderWidth = 1
        gochiWaterButton.backgroundColor = .gochiBackgroundColor
    }
    // MARK: - 버튼 세팅 부분
    func setUpButton() {
        gochiRiceButton.addTarget(self, action: #selector(riceButtonTapped), for: .touchUpInside)
        gochiWaterButton.addTarget(self, action: #selector(waterButtonTapped), for: .touchUpInside)
    }
    // MARK: - 기능 부분
    func setUpDataGochi() {
        //1-1
        gochiImage.image = UIImage(named: "\(GochiModel.getGochiNum)-\(GochiModel.getGochiLevelNum)")
        gochiNameLabel.text = GochiModel.gochi
        gochiState.text = GochiModel.stateText
        
        navigationItem.title = "\(UserModel.nickName)님의 다마고치"
    }
    func sendMessage() {
        gochiMessageImage.isHidden = false
        gochiMessageLabel.isHidden = false
        gochiMessageLabel.text = "어쩌구 저쩌구 다마고치 어쩌구~~~~~"
        sleep(3)
        gochiMessageImage.isHidden = true
        gochiMessageLabel.isHidden = true
        
    }
    // MARK: - 버튼 동작 관련 함수
    @objc func riceButtonTapped() {
        if gochiRiceTextField.text!.isEmpty {
            GochiModel.gochiRice = 1
        }else{
            if let rice = Int(gochiRiceTextField.text!), rice < 100 {
                GochiModel.gochiRice = rice
            }else{
                //1.
                let alert = UIAlertController(
                    title: "입력을 확인해주세요.",
                    message: "숫자이면서 99이하의 수를 입력해주세요.",
                    preferredStyle: .alert
                )
                //2.
                let ok = UIAlertAction(title: "확인", style: .default)
                //3.
                alert.addAction(ok)
                //4
                present(alert, animated: true)
            }
        }
        gochiRiceTextField.text = ""
        setUpDataGochi()
    }
    @objc func waterButtonTapped() {
        if gochiWaterTextField.text!.isEmpty {
            GochiModel.gochiWater = 1
        }else{
            if let water = Int(gochiWaterTextField.text!), water < 50 {
                GochiModel.gochiWater = water
            }else{
                //1.
                let alert = UIAlertController(
                    title: "입력을 확인해주세요.",
                    message: "숫자이면서 49이하의 수를 입력해주세요.",
                    preferredStyle: .alert
                )
                //2.
                let ok = UIAlertAction(title: "확인", style: .default)
                //3.
                alert.addAction(ok)
                //4
                present(alert, animated: true)
            }
        }
        gochiWaterTextField.text = ""
        setUpDataGochi()
    }
    @objc func nvButtonTapped() {
        let vc = SettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
