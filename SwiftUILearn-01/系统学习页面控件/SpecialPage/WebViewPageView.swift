//
//  WebViewPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI
import WebKit

// UIViewRepresentable 协议需要实现两个方法： makeUIView(context:) 用来创建一个 MKMapView， updateUIView(_:context:) 用来配置 view 并响应修改。makeUIView(context:) 方法替换 body 属性，该方法创建并返回一个空的 MKMapView。
struct WebViewPageView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.apple.com")!)
        uiView.load(req)
        
    }
}

struct WebViewPageView_Previews: PreviewProvider {
    static var previews: some View {
        WebViewPageView()
    }
}
