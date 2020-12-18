//
//  WebView.swift
//  HackerNews
//
//  Created by Victor Lee on 12/17/20.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
   
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
