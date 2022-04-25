//
//  navigationCollectionview.swift
//  SwiftTest
//
//  Created by 김민종 on 2022/04/23.
//

import UIKit

class navigationCollectionview: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
}

extension navigationCollectionview: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = c
    }
    
    
}
