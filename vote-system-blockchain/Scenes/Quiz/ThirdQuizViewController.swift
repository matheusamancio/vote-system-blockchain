//
//  ThirdQuizViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 22/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class ThirdQuizViewController: BaseViewController {
    
    
    private let headerLabel: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Renda Mensal"
        label.textColor = UIColor.black
        label.textAlignment = .left
        return label
    }()
    private let incomeTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "R$5.000"
        textfield.font = UIFont.textField
        textfield.keyboardType = UIKeyboardType.numberPad
        return textfield
    }()
    private let lineCpfView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    fileprivate let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Etapa", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToFourthQuizVC), for: .touchUpInside)
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
        l.text = "Renda mensal familiar é a soma de todas \nos salários do seu grupo familiar no mês"
        return l
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = "Agora a renda mensal"
        self.navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        setupNavigationMultilineTitle()
        
        incomeTextField.becomeFirstResponder()
        view.backgroundColor = .white
        view.addSubview(headerLabel)
        view.addSubview(incomeTextField)
        view.addSubview(lineCpfView)
        view.addSubview(nextButton)
        view.addSubview(infoimage)
        view.addSubview(messageLabel)


    }
    
    @objc func goToFourthQuizVC(sender: UIButton!) {
        let fq = FourthQuizViewController()
        self.navigationController?.pushViewController(fq, animated: true)
    }
    override func setupConstraints() {
        
        
        // MARK: headerLabel
        headerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(44)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
        }
        
        // MARK: incomeTextField
        incomeTextField.snp.makeConstraints { (make) in
            make.top.equalTo(headerLabel.snp.bottom)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(44)
        }
        // MARK: lineCpfView
        lineCpfView.snp.makeConstraints { make in
            make.bottom.equalTo(incomeTextField.snp.bottom)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(1)
        }
        
        //MARK: infoimage
        infoimage.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(nextButton.snp.top).offset(-50)
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
            make.top.equalTo(lineCpfView.snp.bottom).offset(100)
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
