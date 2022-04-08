//
//  Test.swift
//  SwiftTest
//
//  Created by 김민종 on 2022/04/08.
//

import UIKit

class ScaleSmartCheckNavigationController: UINavigationController {
    init?(coder: NSCoder, deviceType: Double, recentHistoryId: Double?, recentWeight: Double?, recentWeightChange: Double?, recentBMIChange: Double?, recentBodyFatPercentChange: Double?) {
        self.deviceType = deviceType
        self.recentHistoryId = recentHistoryId
        self.recentWeight = recentWeight
        self.recentWeightChange = recentWeightChange
        self.recentBMIChange = recentBMIChange
        self.recentBodyFatPercentChange = recentBodyFatPercentChange
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let deviceType: Double
    let recentHistoryId: Double?
    let recentWeight: Double?
    let recentWeightChange: Double?
    let recentBMIChange: Double?
    let recentBodyFatPercentChange: Double?
    
}
