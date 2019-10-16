
//
//  ImagePageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct ImagePageView: View {
    
    let range = 1..<4
    @State private var uiImage:UIImage? = nil
     let placeholderImage = UIImage(named: "icon")!
    var body: some View {
        VStack{
            VStack{
            ForEach(range) { index in
                Image("icon")
                    .resizable()
                    .frame(width: CGFloat(30 * index),
                           height: CGFloat(30 * index),
                           alignment: .topLeading)
                .padding(EdgeInsets(top: 20, leading: 100, bottom: 0, trailing: 0))
//                .offset(x: -100, y: 0)
                    .onTapGesture {
                        print("Tap \(index)")
                }
            }
            }
            Image(uiImage: self.uiImage ?? placeholderImage)
                       .resizable()
                       .onAppear(perform: downloadWebImage)
                       .frame(width: 80,
                              height: 80,
                              alignment: .center)
                       .onTapGesture {
                           print("Tap ")
                   }
            Spacer()
        }
        .offset(x: -100, y: 0)
        .navigationBarTitle(Text("Image"))
    }
    
    func downloadWebImage() {
        
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            print("Invalid URL.")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data) {
                self.uiImage = image
            }else {
                print("error: \(String(describing: error))")
            }
        }.resume()
    }
}

struct ImagePageView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePageView()
    }
}
