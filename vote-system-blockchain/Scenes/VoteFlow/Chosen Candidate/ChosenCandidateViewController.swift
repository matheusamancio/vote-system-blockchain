//
//  ChosenCandidateViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 17/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class ChosenCandidateViewController: BaseViewController {
    
    var candidate: Candidate? = nil
    
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
        return iv
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel.text()
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    

    fileprivate let validateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Etapa", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goTosuccsessful), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        nameLabel.text = candidate?.name
        partyLabel.text = candidate?.party
        viceLabel.text = candidate?.vice
        picImageView.image = candidate?.photo
        descriptionLabel.text = candidate?.description
        
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.addSubview(partyLabel)
        view.addSubview(viceLabel)
        view.addSubview(picImageView)
        view.addSubview(validateButton)
        view.addSubview(descriptionLabel)

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func setupConstraints() {
        
        // MARK: picImageView
        picImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
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
            make.top.equalTo(nameLabel.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: viceLabel
        viceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(partyLabel.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: descriptionLabel
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(viceLabel.snp.bottom).offset(32)
            make.left.equalToSuperview().offset(17)
            make.right.equalToSuperview().offset(-17)
        }
        
        
        //MARK: validateButton
        validateButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-11)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
        
    }
    @objc func goTosuccsessful(sender: UIButton!) {
        print(#function,"bt pressed")
        let succVC = SuccessfulVoteViewController()
        succVC.candidate = candidate
        self.navigationController?.pushViewController(succVC, animated: true)


    }
    
}
