//
//  QuizViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 16/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class QuizViewController: BaseViewController {

    private let nameLabel: UILabel = {
        let l = UILabel.title()
        l.textColor = .white
        l.numberOfLines = 1
        l.textAlignment = .left
        l.text = "Matheus amancio"
        return l
    }()

    private let messageLabel: UILabel = {
        let l = UILabel.subtitle()
        l.textColor = .white
        l.numberOfLines = 1
        l.textAlignment = .left
        l.text = "Antes de votar, queremos te conhecer"
        return l
    }()
    
    private let messageLabel2: UILabel = {
        let l = UILabel.miniText()
        l.textColor = .white
        l.numberOfLines = 5
        l.textAlignment = .left
        l.text = "*Fique  tranquilo, \nos dados serão apenas para \nfins estatisticos. \nSeu nome e cpf não \nserão públicados."
        return l
    }()
    
    private let backImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage.init(named: "quiz")
        return iv
    }()
    
    fileprivate let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("começar", for: .normal)
        button.setTitleColor(.black, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .white
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToNameVC), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(backImageView)
        self.view.addSubview(nameLabel)
        self.view.addSubview(messageLabel)
        self.view.addSubview(messageLabel2)
        self.view.addSubview(startButton)
        
        
        // MARK: nameLabel
        nameLabel.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(33)
                make.left.equalToSuperview().offset(15)
                make.height.equalTo(35)
            
            
        }
        
        // MARK: messageLabel
        messageLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.left.equalTo(nameLabel.snp.left)
            make.height.equalTo(20)
        }
        
        // MARK: messageLabel2
        messageLabel2.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-20)
            make.left.equalTo(nameLabel.snp.left)
            make.width.equalTo(182)
        }
        
        
        
        // MARK: startButton
        startButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-23)
            make.bottom.equalTo(messageLabel2.snp.bottom)
            make.height.equalTo(50)
            make.width.equalTo(128)
        }
        
        
        // MARK: backImageView
        backImageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
    }
    
    @objc func goToNameVC(sender: UIButton!) {
        print(#function,"bt pressed")
        let name = NameViewController()
        self.navigationController?.pushViewController(name, animated: true)
    }
}
