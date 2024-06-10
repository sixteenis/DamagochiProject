//
//  SettingTableViewCell.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/9/24.
//

import UIKit

import SnapKit

class SettingTableViewCell: UITableViewCell {
    let settingimage = UIImageView()
    let settingtitle = UILabel()
    let settingnickName = UILabel()
    let settingimage2 = UIImageView()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpHierarch()
        setUpLayout()
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - connect 부분
    func setUpHierarch() {
        contentView.addSubview(settingimage)
        contentView.addSubview(settingtitle)
        contentView.addSubview(settingnickName)
        contentView.addSubview(settingimage2)
    }
    
    // MARK: - Layout 부분
    func setUpLayout() {
        settingimage.snp.makeConstraints { make in
            make.leading.equalTo(contentView.safeAreaLayoutGuide).inset(20)
            make.centerY.equalTo(contentView.safeAreaLayoutGuide)
            make.size.equalTo(15)
        }
        settingtitle.snp.makeConstraints { make in
            make.centerY.equalTo(contentView.safeAreaLayoutGuide)
            make.leading.equalTo(settingimage.snp.trailing).offset(10)
        }
        settingnickName.snp.makeConstraints { make in
            make.centerY.equalTo(contentView.safeAreaLayoutGuide)
            make.trailing.equalTo(settingimage2.snp.leading).offset(-5)
        }
        settingimage2.snp.makeConstraints { make in
            make.centerY.equalTo(contentView.safeAreaLayoutGuide)
            make.trailing.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.size.equalTo(15)
        }
        
    }
    
    // MARK: - UI 세팅 부분 (정적)
    func setUpUI() {
        contentView.backgroundColor = .gochiBackgroundColor
        
        settingimage.contentMode = .scaleAspectFill
        settingimage.tintColor = .gochiFontColor
        
    
        settingtitle.contentMode = .left
        settingtitle.font = .systemFont(ofSize: 12)
        settingtitle.textColor = .gochiFontColor
        
        
        settingnickName.font = .systemFont(ofSize: 12)
        settingnickName.textColor = .gochiFontColor
        settingnickName.contentMode = .right
        
        
        settingimage2.contentMode = .scaleAspectFit
        settingimage2.tintColor = .gochiFontColor
    }
    
    // MARK: - 동적인 세팅 부분
    func setUpData(data: SettingModel) {
        print(#function)
        settingimage.image = UIImage(systemName: data.setimage)
        
        settingtitle.text = data.settitle

        settingnickName.text = data.setnickName != nil ? UserModel.nickName : ""
        
        settingimage2.image = UIImage(systemName: data.setimage2)
    }

}
