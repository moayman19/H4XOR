//
//  WebView.swift
//  H4XOR News
//
//  Created by MohammedAyman on 5/20/22.
//  Copyright © 2022 MohammedAyman. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView:UIViewRepresentable {
    let urlString:String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
