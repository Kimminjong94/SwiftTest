//
//  DanalTest.swift
//  SwiftTest
//
//  Created by 김민종 on 2022/04/13.
//

import UIKit
import Foundation
import WebKit
import SnapKit


class DanalTest: UIViewController, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    
    var Constant: String? = ""
    
    var webView: WKWebView?
    
    var dic = [String : String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 브릿지 설정
        let contentController = WKUserContentController()
        contentController.add(self, name: "authSuccess")
        contentController.add(self, name: "authFail")
        contentController.add(self, name: "impUid")

        let config = WKWebViewConfiguration()
        config.userContentController = contentController

        webView = WKWebView(frame: .zero, configuration: config)
        webView?.uiDelegate = self
        webView?.navigationDelegate = self

        self.view.addSubview(webView!)

        webView?.snp.makeConstraints({ maker in
            maker.top.equalTo(self.view.snp.topMargin)
            maker.bottom.equalTo(self.view.snp.bottomMargin)
            maker.left.equalTo(self.view.snp.left)
            maker.right.equalTo(self.view.snp.right)
        })
      }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)

          
          let htmlPath = Bundle.main.path(forResource: "Header", ofType: "html")
          let url = URL(fileURLWithPath: htmlPath!)
          let request = URLRequest(url: url)
          webView?.load(request)
      }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        if message.name == "authSuccess" {

//            let impUid = message.body as! String
//            Constants.ImpUid = impUid
//
//
//
//            print(receiveData)
//            print("goood")
            
            

            self.performSegue(withIdentifier: "testSegue", sender: nil)

        } else if message.name == "authFail" {
          // 인증 취소, 실패 시 처리할 로직
            print("failed")
            self.navigationController?.popViewController(animated: true)
        }
    }


    
    



    
    func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (Bool) -> Void) {
      let alertController = UIAlertController(title: message, message: nil, preferredStyle: .alert)

      let cancelAction = UIAlertAction(title: "취소", style: .cancel) { _ in
        completionHandler(false)
      }

      let okAction = UIAlertAction(title: "확인", style: .default) { _ in
        completionHandler(true)
      }

      alertController.addAction(cancelAction)
      alertController.addAction(okAction)

      DispatchQueue.main.async {
        self.present(alertController, animated: true, completion: nil)
      }
    }
}
    

