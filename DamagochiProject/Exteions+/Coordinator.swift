////
////  Coordinator.swift
////  DamagochiProject
////
////  Created by 박성민 on 6/10/24.
////
//
//import UIKit
//
//protocol Coordinator: AnyObject {
//    var parentCoordinator: Coordinator? { get set }
//    var children: [Coordinator] { get set }
//    var navigationController : UINavigationController { get set }
//    func start()
//
//}
//extension Coordinator {
//    func childDidFinish(_ coordinator : Coordinator){
//            // Call this if a coordinator is done.
//            for (index, child) in children.enumerated() {
//                if child === coordinator {
//                    children.remove(at: index)
//                    break
//                }
//            }
//        }
//}
//
//final class AppCoordinator: Coordinator {
//    var parentCoordinator: Coordinator?
//    
//    var children: [Coordinator] = []
//    
//    var navigationController: UINavigationController
//    
//    func start() {
//        print("앱코디네이터시작")
//        startAuthCoordinator()
//    }
//    
//    init(navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//    
//    //1️⃣
//    func startAuthCoordinator() {
//        let authCoordinator = AuthCoordinator(navigationController: navigationController)
//        children.removeAll()
//        authCoordinator.parentCoordinator = self
//        children.append(authCoordinator)
//        authCoordinator.start()
//    }
//    
//    //2️⃣
//    func startHomeTabbarCoordinator() {
//        let homeTabbarCoordinator = HomeTabCoordinator(navigationController: navigationController)
//        children.removeAll()
//        homeTabbarCoordinator.parentCoordinator = self
//        homeTabbarCoordinator.start()
//    }
//    
//    deinit {
//        print("앱코디네이터해제")
//    }
//}
