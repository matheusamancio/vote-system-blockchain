//
//  TutorialViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 22/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    
    var flag: Int = 0
    private let messageLabel: UILabel = {
        let l = UILabel.onboarding()
        l.textColor = .white
        l.numberOfLines = 5
        l.textAlignment = .right
        return l
    }()
    
    private let backImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    fileprivate let jumpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Pular", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.titleLabel?.textAlignment = .left
        button.addTarget(self, action: #selector(goToNameVC), for: .touchUpInside)
        return button
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
    
    
    
    init(text: String, image: UIImage, flag: Int) {
        self.messageLabel.text = text
        self.backImageView.image = image
        self.flag = flag
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(backImageView)
        self.view.addSubview(messageLabel)
        self.view.addSubview(jumpButton)
        self.view.addSubview(startButton)
        // MARK: messageLabel
        messageLabel.snp.makeConstraints { make in
            if self.flag == 3 {
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-100)
                messageLabel.textAlignment = .center
            }else{
                make.bottom.equalToSuperview().offset(-30)
                make.left.equalToSuperview()
                make.right.equalToSuperview().offset(-13)
                messageLabel.textAlignment = .right
            }
        }
        
        // MARK: startButton
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(messageLabel.snp.bottom).offset(20)
            make.height.equalTo(40)
            make.width.equalTo(111)
            messageLabel.textAlignment = .right
            if self.flag == 3 {
                startButton.isHidden = false
            }else{
                startButton.isHidden = true
            }
        }
        
        
        // MARK: backImageView
        backImageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        
        // MARK: jumpButton
        jumpButton.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-15)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
    }
    
    @objc func goToNameVC(sender: UIButton!) {
        print(#function,"bt pressed")
        let name = NameViewController()
        self.navigationController?.pushViewController(name, animated: true)
        UserDefaults.standard.set(true, forKey: "TutorialOff")
    }

    
}
