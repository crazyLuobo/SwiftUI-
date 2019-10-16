//
//  PickPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI
import Combine

struct PickPageView: View {
    // 用于左右选择器
    @State var leftIndex = 0
    @State var rightIndex = 0
    let leftSource = (0..<10).map{$0%2 == 0 ? "🧜‍♀️\($0)":"🧚‍♀️\($0)" }
    let rightSource = (11..<36).map { String($0 - 1, radix: $0).uppercased() }
    
    // 用于时间选择器
    @ObservedObject var server = DateServer()
    var speaceDate:Range<Date>?
    
    init() {
        let soon = Calendar.current.date(byAdding: .year,
                                         value: -1,
                                         to: server.date) ?? Date()
        
        let later = Calendar.current.date(byAdding: .year,
                                          value: 1,
                                          to: server.date) ?? Date()
        speaceDate = soon..<later
    }
    
    
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("LeftValue")
                    Text("\(self.leftSource[self.leftIndex])")
                        .foregroundColor(.orange)
                        .bold()
                        .italic()
                        .font(.largeTitle)
                    Picker(selection: $leftIndex, label: Text("left pick")) {
                        ForEach(0..<leftSource.count) {
                            Text(self.leftSource[$0]).tag($0)
                        }
                    }.frame(width: UIScreen.main.bounds.size.width/2.0)
                    
                    
                }
                VStack{
                    Text("RightValue")
                    Text("\(self.rightSource[self.rightIndex])")
                        .foregroundColor(.orange)
                        .bold()
                        .font(.largeTitle)
                    Picker(selection: $rightIndex, label: Text("right pick")) {
                        ForEach(0..<rightSource.count) {
                            Text(self.rightSource[$0]).tag($0)
                        }
                    }.frame(width: UIScreen.main.bounds.size.width/2.0)
                    
                }
            }
            VStack{
                Text("日期选择").bold()
                DatePicker(selection: $server.date, in: server.spaceDate, displayedComponents: .date, label: {
                         Text("")
                })
            }
        }.navigationBarTitle(Text("选择器"))
    }
}

class DateServer: ObservableObject {
    
    var didChange = PassthroughSubject<DateServer,Never>()
    var date: Date = Date() {
        didSet {
            didChange.send(self)
            print("Date Changed: \(date)")
        }
    }
    
    var spaceDate: ClosedRange<Date>  {
        let soon = Calendar.current.date(byAdding: .year,
                                         value: -1,
                                         to: date) ?? Date()
        
        let later = Calendar.current.date(byAdding: .year,
                                          value: 1,
                                          to: date) ?? Date()
        let speaceDate = soon...later
        return speaceDate
    }
}

struct PickPageView_Previews: PreviewProvider {
    static var previews: some View {
        PickPageView()
    }
}
