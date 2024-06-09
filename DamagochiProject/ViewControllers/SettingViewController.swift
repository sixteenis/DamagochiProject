//
//  SettingViewController.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/9/24.
//

import UIKit

class SettingViewController: UIViewController {
    let settingTable = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHierarch()
        setUpLayout()
        setUpUI()
        setUpNV()
        setUpTable()
    }
    
    // MARK: - connect 부분
    func setUpHierarch() {
        view.addSubview(settingTable)
    }
    
    // MARK: - Layout 부분
    func setUpLayout() {
        settingTable.snp.makeConstraints { make in
            make.edges.equalTo(view)
            
        }
    }
    func setUpTable() {
        settingTable.delegate = self
        settingTable.dataSource = self
        settingTable.rowHeight = 40
        settingTable.backgroundColor = .gochiBackgroundColor
        settingTable.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.id)
        
    }
    
    // MARK: - UI 세팅 부분
    func setUpUI() {
        view.backgroundColor = .gochiBackgroundColor
    }
    func setUpNV() {
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.tintColor = .gochiFontColor
        navigationItem.title = "설정"
        
    }

}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.id, for: indexPath) as! SettingTableViewCell
        let data = settingList[indexPath.row]
        cell.setUpData(data: data)
        return cell
    }
    
    
}
