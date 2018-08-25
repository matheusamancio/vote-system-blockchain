//
//  NumberCandidateViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 25/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class NumberCandidateViewController: BaseViewController {
    
    let c1 = Candidate(name: "José Nascimento", vice: "Marcel Valverde", party: "PLA", photo: "cand1", desc:"Nascido em Campinas, José dias Nascimento tem 62 anos. Formado em economia na Universidade de Campinas (Unicamp). Atuou cerca de 20 anos no mercado financeiro e 7 anos na politica. Já foi prefeito de sua cidade natal, e hoje busca a presidencia do Brasil.")
    
    private let numberTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "**"
        textfield.font = UIFont.textField
        textfield.textAlignment = .center
        textfield.keyboardType = UIKeyboardType.numberPad
        textfield.textColor = UIColor.labelColor()
        return textfield
    }()
    private let lineNumberCandidate: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    fileprivate let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Votar", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToCandidate), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = "Digite o número do seu candidato"
        self.navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        setupNavigationMultilineTitle()
        
        
        numberTextField.becomeFirstResponder()
        view.backgroundColor = .white
        view.addSubview(numberTextField)
        view.addSubview(lineNumberCandidate)
        view.addSubview(nextButton)
    }
    
    @objc func goToCandidate(sender: UIButton!) {
        let chosenVC = ChosenCandidateViewController()
        chosenVC.candidate = c1
        self.navigationController?.pushViewController(chosenVC, animated: true)
    }
    override func setupConstraints() {
        
        
        // MARK: numberTextField
        numberTextField.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(44)
        }
        // MARK: lineNumberCandidate
        lineNumberCandidate.snp.makeConstraints { make in
            make.bottom.equalTo(numberTextField.snp.bottom)
            make.centerX.equalToSuperview()
            make.height.equalTo(3)
            make.width.equalTo(60)

        }
        
        //MARK: nextButton
        nextButton.snp.makeConstraints { (make) in
            make.top.equalTo(lineNumberCandidate.snp.bottom).offset(44)
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
