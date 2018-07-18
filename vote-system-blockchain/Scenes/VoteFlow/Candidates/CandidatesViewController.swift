//
//  CandidatesViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 12/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit



class CandidatesViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var arrayCandidates: [Candidate] = []
    let c1 = Candidate(name: "José Nascimento", vice: "Marcel Valverde", party: "PLA", photo: "cand1")
    let c2 = Candidate(name: "Samuel Gomes", vice: "Isaias Lima", party: "PTD", photo: "cand2")
    let c3 = Candidate(name: "Tobias Neto", vice: "Marcelo Silva", party: "PB", photo: "cand3")
    let c4 = Candidate(name: "Paula Tanaka", vice: "Matheus Amancio", party: "PSR", photo: "cand4")
    let c5 = Candidate(name: "Selma Batista", vice: "Evandro Viva", party: "PDF", photo: "cand5")

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
        arrayCandidates = [c1,c2,c3,c4,c5]

        self.title = "Escolha um candidato"
        setupNavigationMultilineTitle()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goToCandidate(candidate: arrayCandidates[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCandidates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CandidatesTableCell", for: indexPath as IndexPath) as? CandidatesTableCell
        cell?.nameLabel.text = arrayCandidates[indexPath.row].name
        cell?.partyLabel.text = arrayCandidates[indexPath.row].party
        cell?.viceLabel.text = arrayCandidates[indexPath.row].vice

        cell?.picImageView.image = arrayCandidates[indexPath.row].photo
        return cell!
    }
    
    func goToCandidate(candidate: Candidate){
        let chosenVC = ChosenCandidateViewController()
        chosenVC.candidate = candidate
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
