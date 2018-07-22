//
//  TutorialViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 22/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    private let messageLabel: UILabel = {
        let l = UILabel.subtitle()
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
    
    init(text: String, image: UIImage) {
        self.messageLabel.text = text
        self.backImageView.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(backImageView)
        self.view.addSubview(messageLabel)

        // MARK: messageLabel
        messageLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-35)
            make.left.equalToSuperview()
            make.right.equalToSuperview().offset(-13)
        }
        
        
        // MARK: backImageView
        backImageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
