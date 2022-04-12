//
//  Test.swift
//  SwiftTest
//
//  Created by 김민종 on 2022/04/08.
//

import UIKit

class CheckVC: UIViewController {
    init?(coder: NSCoder, type: Double, history: Double?) {
        self.type = type
        self.history = history

        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let type: Double
    let history: Double?
    
}
