//
//  DanalTest.swift
//  SwiftTest
//
//  Created by 김민종 on 2022/04/13.
//

import UIKit
import Foundation
import WebKit

class DanalTest: UIViewController {
    @IBOutlet weak var testWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)

      if let url = URL(string: "본인인증 웹 페이지 주소 입력") {
        let urlRequest = URLRequest(url: url)
          testWebView?.load(urlRequest)
      }
    }
    
    
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Swift.Void) {
      let alertController = UIAlertController(title: message, message: nil, preferredStyle: .alert)

      let cancelAction = UIAlertAction(title: "확인", style: .cancel) { _ in
        completionHandler()
      }

      alertController.addAction(cancelAction)

      DispatchQueue.main.async {
        self.present(alertController, animated: true, completion: nil)
      }
    }

}
