//
//  SeventhViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 23/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class SeventhQuizViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var arrayAlternatives: [String] = []
    let a1 = "1ª"
    let a2 = "2ª"
    let a3 = "3ª"
    let a4 = "4ª"
    let a5 = "5ª"
    let a6 = "6ª"
    let a7 = "7ª"
    let a8 = "8ª"
    let a9 = "9ª"
    let a10 = "10ª"
    
    let screenSize: CGRect = UIScreen.main.bounds
    let leftAndRightPaddings: CGFloat = 80.0
    let numberOfItemsPerRow: CGFloat = 5


    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = CGSize(width: 200, height: 100)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = -5
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.allowsMultipleSelection = false
        cv.allowsSelection = true
        cv.backgroundColor = .white
        
        cv.register(SeventhQuizCollectionCell.self, forCellWithReuseIdentifier: "SeventhQuizCollectionCell")
        return cv
    }()
    
    fileprivate let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Etapa", for: .normal)
        button.setTitleColor(.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.button
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.buttonColor()
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(goToNinth), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayAlternatives = [a1,a2,a3,a4,a5,a6,a7,a8,a9,a10]
        self.title = "Período que estuda"
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        view.addSubview(nextButton)
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayAlternatives.count

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat((collectionView.frame.size.width / 3) - 20), height: CGFloat(100))
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeventhQuizCollectionCell", for: indexPath) as! SeventhQuizCollectionCell
        cell.alternativeLabel.text = arrayAlternatives[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func goToNinth(){
        let nq = ninthQuizViewController()
        self.navigationController?.pushViewController(nq, animated: true)
        
    }
    
    override func setupConstraints() {
        collectionView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        nextButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-20)
            make.left.equalToSuperview().offset(35)
            make.right.equalToSuperview().offset(-35)
            make.height.equalTo(50)
        }
    }
}
