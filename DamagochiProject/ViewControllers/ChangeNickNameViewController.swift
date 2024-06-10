//
//  ChangeNickNameViewController.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/10/24.
//

import UIKit

import SnapKit

class ChangeNickNameViewController: UIViewController {
    let nickNameTextField = UITextField()
    let line = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHierarch()
        setUpLayout()
        setUpUI()
        setUpVC()
    }
    
    // MARK: - connect 부분
    func setUpHierarch() {
        view.addSubview(nickNameTextField)
        view.addSubview(line)
    }
    
    // MARK: - Layout 부분
    func setUpLayout() {
        nickNameTextField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).offset(10)
        }
        line.snp.makeConstraints { make in
            make.top.equalTo(nickNameTextField.snp.bottom).offset(5)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.height.equalTo(1)
        }
    }
    
    // MARK: - UI 세팅 부분
    func setUpUI() {
        view.backgroundColor = .gochiBackgroundColor
        
        line.backgroundColor = .gochiFontColor
    }
    func setUpVC() {
        navigationItem.title = "\(UserModel.nickName)님의 이름 정하기"
        let item = UIBarButtonItem(title: "저장",style: .plain,  target: self, action: #selector(saveButtonTapped))
        navigationItem.rightBarButtonItem = item
    }
    
    // MARK: - 버튼 함수
    @objc func saveButtonTapped() {
        if 2 <= nickNameTextField.text!.count && nickNameTextField.text!.count <= 6 {
            UserModel.nickName = nickNameTextField.text!
            navigationController?.popViewController(animated: true)
        }else{
            //1.
            let alert = UIAlertController(
                title: "저장 실패",
                message: "2글자 이상 6글자 이하로 닉네임을 변경해주세요!",
                preferredStyle: .alert
            )
            //2.
            let ok = UIAlertAction(title: "확인", style: .default) { _ in
                self.nickNameTextField.text = ""
            }
            
            //3.
            
            alert.addAction(ok)
            //4
            present(alert, animated: true)
        }
    }
}
