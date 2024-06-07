//
//  SelectionViewController.swift
//  DamagochiProject
//
//  Created by 박성민 on 6/7/24.
//

import UIKit

import SnapKit

class SelectionViewController: UIViewController {
    let gochiTable = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        setUpHierarch()
        setUpLayout()
        setUpUI()
        tableviewConnect()
    }
    
    // MARK: - connect 부분
    func setUpHierarch() {
        view.addSubview(gochiTable)
    }
    
    // MARK: - Layout 부분
    func setUpLayout() {
        gochiTable.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    // MARK: - UI 세팅 부분
    func setUpUI() {
        navigationItem.title = "다마고치 선택하기"
        
        view.backgroundColor = .gochiBackgroundColor
        
        gochiTable.backgroundColor = .gochiBackgroundColor
    }
    func tableviewConnect() {
        print(#function)
        gochiTable.dataSource = self
        gochiTable.delegate = self
        gochiTable.register(GochisTableViewCell.self, forCellReuseIdentifier: GochisTableViewCell.id)
        gochiTable.rowHeight = 120
        gochiTable.backgroundColor = .gochiBackgroundColor
        
        
    }

}
extension SelectionViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return gochiList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: GochisTableViewCell.id, for: indexPath) as! GochisTableViewCell
        let data = gochiList[indexPath.row]
        cell.setUpData(data: data)
        
        return cell
    }
    
    
}
