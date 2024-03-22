//
//  WebViewController.swift
//  IosFeatureDemo
//
//  Created by shoya on 2024/03/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let transitUrl = URL(string: "https://www.google.com") {
            let request = URLRequest(url: transitUrl)
            webView.load(request)
        }
        webView.navigationDelegate = self
    }

    @IBAction func reloadTapped(sender: UIButton) {
        webView.reload()
    }

    @IBAction func backTapped(sender: UIButton) {
        webView.goBack()
    }

    @IBAction func forwardTapped(sender: UIButton) {
        webView.goForward()
    }

    // Delegation(Side Effect)
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Web View was loaded")
    }

}
