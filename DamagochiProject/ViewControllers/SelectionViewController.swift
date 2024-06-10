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
        gochiTable.dataSource = self
        gochiTable.delegate = self
        gochiTable.register(GochisTableViewCell.self, forCellReuseIdentifier: GochisTableViewCell.id)
        gochiTable.rowHeight = 120
        gochiTable.backgroundColor = .gochiBackgroundColor
        //gochiTable.separatorStyle = .none

        
        
    }

}
extension SelectionViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(#function)
        return gochiList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: GochisTableViewCell.id, for: indexPath) as! GochisTableViewCell
        let data = gochiList[indexPath.row]
        cell.setUpData(data: data)
        cell.selectionStyle = .none
        return cell
    }
    
    // MARK: - 다마고치 선택 후 다음 화면으로 이동하는 부분
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
        let gochi = gochiList[indexPath.row]
        if gochi.name != "준비중이에요"{
            //1.
            let alert = UIAlertController(
                title: gochi.name,
                message: "\(gochi.name)을 키우시겠습니까? \n추후에 변경 가능합니다!",
                preferredStyle: .alert
            )
            //2.
            let ok = UIAlertAction(title: "확인", style: .default,handler: {_ in
                let vc = StartGochGameViewController()
                GochiModel.gochi = gochi.name
                                
                if let navController = self.navigationController {
                    navController.setViewControllers([vc], animated: true)
                } else {
                    let navController = UINavigationController(rootViewController: vc)
                    navController.modalPresentationStyle = .fullScreen
                    self.present(navController, animated: true, completion: nil)
                }

            })
            let cancel = UIAlertAction(title: "취소", style: .cancel)
            
            //3.
            alert.addAction(cancel)
            alert.addAction(ok)
            
            //4
            present(alert, animated: true)
        }
    }
    
    
}
