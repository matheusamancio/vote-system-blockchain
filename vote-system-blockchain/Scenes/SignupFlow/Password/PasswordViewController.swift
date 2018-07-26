//
//  PasswordViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 27/06/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class PasswordViewController: BaseViewController {
    
    
    private let headerLabel: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Senha:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        return label
    }()
    private let passTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "uma senha dificil"
        textfield.font = UIFont.textField
        textfield.keyboardType = UIKeyboardType.numberPad
        textfield.isSecureTextEntry = true
        return textfield
    }()
    private let lineCpfView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    fileprivate let validateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Etapa", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToVoteNumber), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Agora uma Senha"
        setupNavigationMultilineTitle()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        
        
        view.backgroundColor = .white
        view.addSubview(headerLabel)
        view.addSubview(passTextField)
        view.addSubview(lineCpfView)
        view.addSubview(validateButton)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func goToVoteNumber(sender: UIButton!) {
        let privateVC = PrivateKeyViewController()
        self.navigationController?.pushViewController(privateVC, animated: true)
    }
    
    override func setupConstraints() {
        
        
        // MARK: headerLabel
        headerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(44)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
        }
        
        // MARK: cpfTextField
        passTextField.snp.makeConstraints { (make) in
            make.top.equalTo(headerLabel.snp.bottom)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(44)
        }
        // MARK: lineCpfView
        lineCpfView.snp.makeConstraints { make in
            make.bottom.equalTo(passTextField.snp.bottom)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(1)
        }
        
        //MARK: validateButton
        validateButton.snp.makeConstraints { (make) in
            make.top.equalTo(lineCpfView.snp.bottom).offset(44)
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

