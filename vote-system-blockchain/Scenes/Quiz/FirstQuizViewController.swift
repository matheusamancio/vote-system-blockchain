//
//  FirstQuizViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 16/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class FirstQuizViewController: BaseViewController {

    private let womanView: UIView = {
        let v = UIView()
        v.layer.borderWidth = 2
        v.layer.borderColor = UIColor.gray.cgColor
        v.layer.cornerRadius = 8
        return v
    }()

    private let womanLabel: UILabel = {
        let l = UILabel.text()
        l.text = "Feminino"
        l.textAlignment = .center
        l.textColor = .gray
        return l
    }()
    
    private let womanIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "woman")
        return iv
    }()
    
    private let manView: UIView = {
        let v = UIView()
        v.layer.borderWidth = 2
        v.layer.borderColor = UIColor.gray.cgColor
        v.layer.cornerRadius = 8
        return v
    }()
    
    private let manLabel: UILabel = {
        let l = UILabel.text()
        l.text = "Masculino"
        l.textAlignment = .center
        l.textColor = .gray
        return l
    }()
    
    private let manIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "man")
        return iv
    }()
    

    fileprivate let womanButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.tag = 0
        button.addTarget(self, action: #selector(chooseGender), for: .touchUpInside)
        return button
    }()
    
    fileprivate let manButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.tag = 1
        button.addTarget(self, action: #selector(chooseGender), for: .touchUpInside)
        return button
    }()
    
    fileprivate let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Etapa", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToSecond), for: .touchUpInside)
        return button
    }()
    
    private let infoimage: UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "info")
        return iv
    }()
    
    private let messageLabel: UILabel = {
        let l = UILabel.miniText()
        l.textColor = .black
        l.numberOfLines = 2
        l.textAlignment = .left
        l.text = "Como esta cadastrado em sua certidão \nde nascimento"
        return l
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = "Qual seu sexo?"
        self.navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        setupNavigationMultilineTitle()
        
        
        view.backgroundColor = .white
        view.addSubview(nextButton)
        view.addSubview(infoimage)
        view.addSubview(messageLabel)
        view.addSubview(womanView)
        view.addSubview(manView)
        womanView.addSubview(womanLabel)
        womanView.addSubview(womanIconImageView)
        manView.addSubview(manLabel)
        manView.addSubview(manIconImageView)
        view.addSubview(womanButton)
        view.addSubview(manButton)
    }
    
    @objc func goToSecond(sender: UIButton!) {
        let sq = SecondQuizViewController()
        self.navigationController?.pushViewController(sq, animated: true)
    }
    
    @objc func chooseGender(sender: UIButton!) {
        if sender.tag == 0{
            womanLabel.textColor = UIColor.buttonColor()
            womanIconImageView.image = #imageLiteral(resourceName: "woman_pressed")
            womanView.layer.borderWidth = 3
            womanLabel.font = UIFont.nameCandidate
            manLabel.textColor = UIColor.gray
            manIconImageView.image = #imageLiteral(resourceName: "man")
            manView.layer.borderWidth = 2
            manLabel.font = UIFont.text

        }else {
            manLabel.textColor = UIColor.buttonColor()
            manIconImageView.image = #imageLiteral(resourceName: "man_pressed")
            manView.layer.borderWidth = 3
            manLabel.font = UIFont.nameCandidate
            womanLabel.textColor = UIColor.gray
            womanIconImageView.image = #imageLiteral(resourceName: "woman")
            womanView.layer.borderWidth = 2
            womanLabel.font = UIFont.text

        }
    }
    
    
    override func setupConstraints() {
        //MARK: womanButton
        womanButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().offset(80)
            make.centerY.equalToSuperview().offset(-20)
            make.height.equalTo(129)
            make.width.equalTo(129)
        }

        //MARK: manButton
        manButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().offset(-80)
            make.centerY.equalToSuperview().offset(-20)
            make.height.equalTo(129)
            make.width.equalTo(129)
        }

        //MARK: womanView
        womanView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().offset(80)
            make.centerY.equalToSuperview().offset(-20)
            make.height.equalTo(129)
            make.width.equalTo(129)
        }
        
        //MARK: womanIconImageView
        womanIconImageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        //MARK: womanLabel
        womanLabel.snp.makeConstraints { (make) in
            make.top.equalTo(womanIconImageView.snp.bottom).offset(7)
            make.centerX.equalToSuperview()
        }
        
        //MARK: manView
        manView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().offset(-80)
            make.centerY.equalToSuperview().offset(-20)
            make.height.equalTo(129)
            make.width.equalTo(129)
        }
        //MARK: womanIconImageView
        manIconImageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        //MARK: womanLabel
        manLabel.snp.makeConstraints { (make) in
            make.top.equalTo(manIconImageView.snp.bottom).offset(7)
            make.centerX.equalToSuperview()
        }
        

        
        //MARK: infoImage
        infoimage.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(nextButton.snp.top).offset(-150)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        
        //MARK: messageLabel
        messageLabel.snp.makeConstraints { (make) in
            make.left.equalTo(infoimage.snp.right).offset(12)
            make.centerY.equalTo(infoimage.snp.centerY)
        }
        
        //MARK: nextButton
        nextButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-20)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
