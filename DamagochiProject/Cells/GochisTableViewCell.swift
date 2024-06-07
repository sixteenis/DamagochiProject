//
//  gochisTableViewCell.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/7/24.
//

import UIKit

import SnapKit

class GochisTableViewCell: UITableViewCell {
    let gochiImage = UIImageView()
    let gochiName = UILabel()
    let gochiDetails = UILabel()
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
        contentView.addSubview(gochiImage)
        contentView.addSubview(gochiName)
        contentView.addSubview(gochiDetails)
    }
    
    // MARK: - Layout 부분
    func setUpLayout() {
        gochiImage.snp.makeConstraints { make in
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.leading.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.width.equalTo(gochiImage.snp.height)
        }
        gochiName.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide).inset(15)
            make.leading.equalTo(gochiImage.snp.trailing).offset(10)
            make.bottom.equalTo(gochiDetails.snp.top).inset(5)
            
        }
        gochiDetails.snp.makeConstraints { make in
            make.leading.equalTo(gochiImage.snp.trailing).offset(10)
            make.top.equalTo(gochiName.snp.bottom).offset(10)
            make.bottom.equalTo(contentView.safeAreaLayoutGuide).offset(10)
        }
        
   
    }
    
    // MARK: - UI 세팅 부분 (정적)
    func setUpUI() {
        
        
        gochiImage.layer.masksToBounds = true
        //gochiImage.layer.cornerRadius = gochiImage.frame.height / 2
        //gochiImage.layer.borderColor = UIColor.gochiFontColor.cgColor
        //gochiImage.layer.borderWidth = 2
        
        gochiName.font = .boldSystemFont(ofSize: 15)
        gochiName.textColor = .black
        gochiName.textAlignment = .left
        gochiName.numberOfLines = 1
        
        gochiDetails.font = .systemFont(ofSize: 13)
        gochiDetails.textColor = .black
        gochiDetails.textAlignment = .left
        gochiDetails.numberOfLines = 0
        
        
    }
    
    // MARK: - 동적인 세팅 부분
    func setUpData(data: Gochi) {
        gochiImage.image = UIImage(named: data.Image)
        
        gochiName.text = data.name
        
        gochiDetails.text = data.details
        
    }

}
