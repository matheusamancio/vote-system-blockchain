//
//  PrivateKeyViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 10/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class PrivateKeyViewController: BaseViewController {
    
    private let label1: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Seu CPF ja foi validado e este \nnúmero é o seu VOTE NUMBER"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()
    
    private let label2: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Guarde este número com carinho, \npois é a forma de você identificar \nseu voto."
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 3
        return label
    }()
    
    private let label3: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Vote Number"
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    private let label4: UILabel = {
        let label = UILabel.subtitle()
        label.text = "B94R10PS"
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.numberOfLines = 1
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
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToCandidates), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Hora de Votar"
        setupNavigationMultilineTitle()
        
        view.backgroundColor = .white
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(cpfTextField)
        view.addSubview(lineCpfView)
        view.addSubview(cpfTextField)
        view.addSubview(validateButton)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func setupConstraints() {
        

        
        // MARK: label1
        label1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(250)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
        }
        
        // MARK: label2
        label2.snp.makeConstraints { (make) in
            make.top.equalTo(label1.snp.bottom).offset(14)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
        }
        
        // MARK: label3
        label3.snp.makeConstraints { (make) in
            make.top.equalTo(label2.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
        }
        
        // MARK: label4
        label4.snp.makeConstraints { (make) in
            make.top.equalTo(label3.snp.bottom).offset(11)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(44)
        }
        
        //MARK: validateButton
        validateButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-11)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
        
    }
    @objc func goToCandidates(sender: UIButton!) {
        let canVC = CandidatesViewController()
        self.navigationController?.pushViewController(canVC, animated: true)
    }

}
