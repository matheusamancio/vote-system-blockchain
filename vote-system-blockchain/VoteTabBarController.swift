//
//  VoteTabBarController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 26/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class VoteTabBarController: UITabBarController {
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        //First
        let firstViewController = HomeViewController()
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        //Second
        let secondViewController = CandidatesViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
//        tabBarItems[0].title = "Voto"
//        tabBarItems[0].image = #imageLiteral(resourceName: "vote")
//        tabBarItems[0].selectedImage = #imageLiteral(resourceName: "voteSelected")
//        tabBarItems[1].title = "Cnadidatos"
//        tabBarItems[1].image = #imageLiteral(resourceName: "candidate")
//        tabBarItems[1].selectedImage = #imageLiteral(resourceName: "candidateSelected")
//
        let tabBarList = [firstViewController, secondViewController]
        
        viewControllers = tabBarList
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
