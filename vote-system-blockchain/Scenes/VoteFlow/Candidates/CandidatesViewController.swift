//
//  CandidatesViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 12/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class CandidatesViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource  {
    private let tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .white
        tb.rowHeight = 77
        tb.register(CandidatesTableCell.self, forCellReuseIdentifier: "CandidatesTableCell")
        tb.separatorColor = .clear
        tb.delegate = nil
        tb.dataSource = nil
        tb.tableFooterView = UIView()
        return tb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Escolha um candidato"
        setupNavigationMultilineTitle()
        
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goToCandidate()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CandidatesTableCell", for: indexPath as IndexPath) as? CandidatesTableCell
        cell?.nameLabel.text = "José Nascimento"
        cell?.partyLabel.text = "PLA"
        cell?.viceLabel.text = "Marcel Valverde"

        cell?.picImageView.image = UIImage(named: "cand1")
        return cell!
    }
    
    func goToCandidate(){
        let chosenVC = ChosenCandidateViewController()
        self.navigationController?.pushViewController(chosenVC, animated: true)

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
