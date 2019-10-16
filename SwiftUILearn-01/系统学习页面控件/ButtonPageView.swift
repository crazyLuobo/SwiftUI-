//
//  ButtonPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI
import Combine
struct ButtonPageView: View {
    
    @ObservedObject private var source = dataSource()
    var body: some View {
        VStack{
            
            Button(action: {
                print("tap")
            }) {
                Text("I am a little button")
                    .font(.system(size: 20))
                    .italic()
                    .shadow(radius: 1)
            } .frame(height: 100)
            
            
            NavigationLink(destination: ButtonPageView())
            {
                Text("跳转到下一个奇迹")
            }
            .frame(height: 100)
            
            
            List {
            
            ForEach(source.items, id: \.self) { idx in
                PageCellRowView(title: "\(idx)")
                }
                .onDelete(perform: deletePlace)
                .onMove(perform: movePlace)
            }
            
            
            
        }
        .navigationBarTitle(Text("按钮集合"), displayMode: .inline)
        .navigationBarItems(trailing: EditButton())
    }
    
    func deletePlace(at offset: IndexSet) {
           if let last = offset.last {
               source.items.remove(at: last)
               print(source.items.count)
           }
       }
       
       func movePlace(from source: IndexSet, to destination: Int) {
           print(source,destination)
       }
}

class dataSource: ObservableObject {
    
    public var didChange = PassthroughSubject<Void, Never>()

    public var items: [Int] {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        self.items = (0..<10).map { $0 }
    }
}

struct ButtonPageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPageView()
    }
}
