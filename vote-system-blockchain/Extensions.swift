//
//  Extensions.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 19/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    //Polution Scene
    class func buttonColor() -> UIColor{
        return UIColor(red: 0/255, green: 132/255, blue: 136/255, alpha: 1)
    }
    class func labelColor() -> UIColor{
        return UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1)
    }
}


extension UIViewController {
    func setupNavigationMultilineTitle() {
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        for sview in navigationBar.subviews {
            for ssview in sview.subviews {
                guard let label = ssview as? UILabel else { break }
                if label.text == self.title {
                    label.numberOfLines = 0
                    label.lineBreakMode = .byWordWrapping
                    label.sizeToFit()
                    UIView.animate(withDuration: 0.3, animations: {
                        navigationBar.frame.size.height = 57 + label.frame.height
                    })
                }
            }
        }
    }
}
