//
//  ViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 11/05/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit
import SnapKit

class CpfViewController: BaseViewController {


    private let headerLabel: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Digite seu CPF"
        label.textColor = UIColor.black
        label.textAlignment = .left
        return label
    }()
    private let cpfTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "123.456.789-00"
        textfield.font = UIFont.textField
        textfield.keyboardType = UIKeyboardType.numberPad
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
        button.addTarget(self, action: #selector(goToPasswordVC), for: .touchUpInside)
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = "Criar uma conta"
        setupNavigationMultilineTitle()
    

        view.backgroundColor = .white
        view.addSubview(headerLabel)
        view.addSubview(cpfTextField)
        view.addSubview(lineCpfView)
        view.addSubview(validateButton)
    }

    @objc func goToPasswordVC(sender: UIButton!) {
        let passVC = PasswordViewController()
        self.navigationController?.pushViewController(passVC, animated: true)
    }
    override func setupConstraints() {

        
        // MARK: headerLabel
        headerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(44)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
        }

        // MARK: cpfTextField
        cpfTextField.snp.makeConstraints { (make) in
            make.top.equalTo(headerLabel.snp.bottom)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(44)
        }
        // MARK: lineCpfView
        lineCpfView.snp.makeConstraints { make in
            make.bottom.equalTo(cpfTextField.snp.bottom)
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

