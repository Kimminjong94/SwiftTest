//
//  ViewController.swift
//  SwiftTest
//
//  Created by 김민종 on 2022/04/02.
//

import UIKit
import Gifu
import TinyConstraints

class ViewController: UIViewController {

    

    @IBOutlet weak var testCollectionView: UICollectionView!
    @IBOutlet weak var loadingGif: GIFImageView!
    
    @IBOutlet weak var image: UIImageView!
    let gifImageView = GIFImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testCollectionView.dataSource = self
        testCollectionView.delegate = self
        
    }
}
    
    
    
    extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 3
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            return 1
        }
        
    }
    
    
//    func animate() {
//
//        self.loadingGif.addSubview(loadingGif)
//        self.loadingGif.animate(withGIFNamed: "loading")
//
////        let height = view.height(100)
////
////        height.constant = 200
////
//        self.loadingGif.width(view.frame.width)
//        self.loadingGif.contentMode = .scaleToFill
//        loadingGif.height(1000)
//        loadingGif.topToSuperview()
//
//    }
