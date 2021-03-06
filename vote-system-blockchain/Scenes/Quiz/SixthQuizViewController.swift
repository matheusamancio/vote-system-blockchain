//
//  SixthQuizViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 23/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class SixthQuizViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource  {
    
    
    var arrayAlternatives: [String] = []
    let a1 = "Matutino"
    let a2 = "Vespertino"
    let a3 = "Noturno"

    
    private let tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .white
        tb.rowHeight = 65
        tb.register(SixthQuizTableCell.self, forCellReuseIdentifier: "SixthQuizTableCell")
        tb.separatorColor = .clear
        tb.delegate = nil
        tb.dataSource = nil
        tb.tableFooterView = UIView()
        return tb
    }()
    
    fileprivate let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Etapa", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToSeventh), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayAlternatives = [a1,a2,a3]
        self.title = "Período que estuda"
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        view.addSubview(nextButton)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAlternatives.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)  as? SixthQuizTableCell
        cell?.alternativeLabel.textColor = UIColor.buttonColor()
        cell?.alternativeLabel.font = UIFont.selected
        cell?.selectView.backgroundColor = UIColor.buttonColor()
        cell?.selectView.layer.borderColor = UIColor.buttonColor().cgColor
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)  as? SixthQuizTableCell
        cell?.alternativeLabel.textColor = UIColor.gray
        cell?.alternativeLabel.font = UIFont.unselected
        cell?.selectView.backgroundColor = UIColor.white
        cell?.selectView.layer.borderColor = UIColor.gray.cgColor
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SixthQuizTableCell", for: indexPath as IndexPath) as? SixthQuizTableCell
        cell?.alternativeLabel.text = arrayAlternatives[indexPath.row]
        return cell!
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func goToSeventh(){
        let sq = SeventhQuizViewController()
        self.navigationController?.pushViewController(sq, animated: true)
        
    }
    
    override func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        nextButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-20)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
    }
}
