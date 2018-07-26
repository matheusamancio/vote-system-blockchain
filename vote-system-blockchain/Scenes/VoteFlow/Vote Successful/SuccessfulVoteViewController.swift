//
//  SuccessfulVoteViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 18/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class SuccessfulVoteViewController: BaseViewController {

    var candidate: Candidate? = nil
    
    private let messageLabel: UILabel = {
        let l = UILabel.text()
        l.text = "Seu voto foi Registrado com\nsucesso"
        l.textColor = .black
        l.numberOfLines = 2
        l.textAlignment = .left
        return l
    }()
    
    private let voteLabel: UILabel = {
        let l = UILabel.text()
        l.text = "Vote Number"
        l.textColor = .black
        l.numberOfLines = 1
        l.textAlignment = .center
        return l
    }()
    
    private let numberLabel: UILabel = {
        let l = UILabel.importantInfo()
        l.text = "B94R10PS"
        l.textColor = .black
        l.numberOfLines = 1
        l.textAlignment = .center
        return l
    }()
    
    private let nameLabel: UILabel = {
        let l = UILabel.title()
        l.textColor = .black
        l.numberOfLines = 1
        l.textAlignment = .center
        return l
    }()
    
    private let partyLabel: UILabel = {
        let label = UILabel.subtitle()
        label.textColor = UIColor.black
        label.textAlignment = .center
        return label
    }()
    
    private let viceLabel: UILabel = {
        let label = UILabel.subtitle()
        label.textColor = UIColor.black
        label.textAlignment = .center
        return label
    }()
    
    private let picImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 12
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "cand1")
        return iv
    }()
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .always
        self.title = "Parabéns!"
        setupNavigationMultilineTitle()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        nameLabel.text = candidate?.name
        partyLabel.text = candidate?.party
        viceLabel.text = candidate?.vice
        picImageView.image = candidate?.photo
        
        
        view.backgroundColor = .white
        view.addSubview(messageLabel)
        view.addSubview(voteLabel)
        view.addSubview(numberLabel)
        view.addSubview(picImageView)
        view.addSubview(nameLabel)
        view.addSubview(partyLabel)
        view.addSubview(viceLabel)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func setupConstraints() {
        
        // MARK: messageLabel
        messageLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(15)
            make.left.equalToSuperview().offset(23)
            make.right.equalToSuperview()
        }
        
        // MARK: voteLabel
        voteLabel.snp.makeConstraints { make in
            make.top.equalTo(messageLabel.snp.bottom).offset(29)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: numberLabel
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(voteLabel.snp.bottom).offset(1)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: picImageView
        picImageView.snp.makeConstraints { make in
            make.top.equalTo(numberLabel.snp.bottom).offset(12)
            make.height.equalTo(137)
            make.width.equalTo(110)
            make.centerX.equalToSuperview()
        }
        
        // MARK: nameLabel
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(picImageView.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        
        // MARK: partyLabel
        partyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(1)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: viceLabel
        viceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(partyLabel.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}
