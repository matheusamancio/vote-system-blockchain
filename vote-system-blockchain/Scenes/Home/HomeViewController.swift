//
//  HomeViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 25/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    private let label1: UILabel = {
        let label = UILabel.lighText()
        label.text = "Seu CPF ja foi validado e você \njá esta elegível para votar"
        label.textColor = UIColor.labelColor()
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()
    
    private let label2: UILabel = {
        let label = UILabel.lighText()
        label.text = "Vote consciente,pois esse é o \nque você pode se  \nexpressar para mudar o Brasil."
        label.textColor = UIColor.labelColor()
        label.textAlignment = .left
        label.numberOfLines = 3
        return label
    }()
    
    private let label3: UILabel = {
        let label = UILabel.text()
        label.text = "ou"
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    fileprivate let goToVoteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Votar", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goTovote), for: .touchUpInside)
        return button
    }()
    
    fileprivate let knowCandidatesButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Conhecer os candidatos", for: .normal)
        button.setTitleColor(.buttonColor(), for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor.buttonColor().cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToCandidates), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Olá Matheus"
        setupNavigationMultilineTitle()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
        view.backgroundColor = .white
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(goToVoteButton)
        view.addSubview(knowCandidatesButton)

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func setupConstraints() {
        
        
        
        // MARK: label1
        label1.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(44)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-20)
        }
        
        // MARK: label2
        label2.snp.makeConstraints { (make) in
            make.top.equalTo(label1.snp.bottom).offset(14)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-20)
        }
        
        //MARK: knowCandidatesButton
        goToVoteButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(label3.snp.top).offset(-8)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
        
        // MARK: label3
        label3.snp.makeConstraints { (make) in
            make.bottom.equalTo(knowCandidatesButton.snp.top).offset(-8)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        //MARK: goToVoteButton
        knowCandidatesButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-146)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
        
    }
    @objc func goToCandidates(sender: UIButton!) {

        self.tabBarController?.selectedIndex = 1
//
//        let canVC = CandidatesViewController()
//        self.navigationController?.pushViewController(canVC, animated: true)
    }
    
    @objc func goTovote(sender: UIButton!) {
        let numVC = NumberCandidateViewController()
        self.navigationController?.pushViewController(numVC, animated: true)
    }
    
}
