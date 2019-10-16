//
//  ControllerPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit
// 这个是用于显示我们自定义的控制器的
// 只需要遵守就这个协议就可以将我们自定义的控制器和swiftUI进行跳转
struct ControllerPageView<T:UIViewController>: UIViewControllerRepresentable {
     typealias UIViewControllerType = UIViewController
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPageView<T>>) -> UIViewController {
        let vc:UIViewController = T()
        vc.title = "加油我要好好干"
        vc.view.backgroundColor = UIColor.red
         
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerPageView<T>>) {
         debugPrint("\(#function)：\(type(of: T.self))")
    }
   
}

struct ControllerPageView_Previews: PreviewProvider {
    static var previews: some View {
        ControllerPageView()
    }
}
