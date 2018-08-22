//
//  SecondQuizViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 21/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class SecondQuizViewController:  BaseViewController, UITableViewDelegate, UITableViewDataSource  {

    var arrayAlternatives: [String] = []
    let a1 = "Branca"
    let a2 = "Preta"
    let a3 = "Amarela"
    let a4 = "Parda"
    let a5 = "Indígena"
    
    private let tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .white
        tb.rowHeight = 77
        tb.register(SecondQuizTableCell.self, forCellReuseIdentifier: "SecondQuizTableCell")
        tb.separatorColor = .clear
        tb.delegate = nil
        tb.dataSource = nil
        tb.tableFooterView = UIView()
        return tb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayAlternatives = [a1,a2,a3,a4,a5]
        self.title = "Raça"
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAlternatives.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goToThird()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondQuizTableCell", for: indexPath as IndexPath) as? SecondQuizTableCell
        cell?.alternativeLabel.text = arrayAlternatives[indexPath.row]
        return cell!
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToThird(){
        let tq = ThirdQuizViewController()
        self.navigationController?.pushViewController(tq, animated: true)
        
    }
    
    override func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
