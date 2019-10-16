//
//  HomeShowListView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct HomeShowListView: View {
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("特殊视图")){
                    NavigationLink(destination: WebViewPageView()) {
                                    PageCellRowView(title: "WebView", subTitle: "用于展示一个打开的网页")
                                }
                    NavigationLink(destination: ControllerPageView()){
                        PageCellRowView(title: "UIViewController", subTitle: "打开一个控制器")
                        
                    }
                    
                }
                
                Section(header: Text("基础控件")){
                    NavigationLink(destination: TextPageView()){
                        PageCellRowView(title: "Text", subTitle: "显示一行或者是多行数据")
                    }
                    
                    NavigationLink(destination: TextFieldPageView())
                    {
                        PageCellRowView(title: "TextField", subTitle: "显示可编辑文本界面的输入控件和安全输入框")
                    }
                    
                    NavigationLink(destination: ImagePageView())
                    {
                        PageCellRowView(title: "Image", subTitle: "显示本地图片和网路加载图片")
                    }
                    
                    NavigationLink(destination: ButtonPageView())
                    {
                        PageCellRowView(title: "Button", subTitle: "按钮，跳转导航，编辑按钮等")
                    }
                    
                }
                
                Section(header: Text("选择器"))
                {
                    NavigationLink(destination: PickPageView()){
                        PageCellRowView(title: "选择器", subTitle: "自定义数据源的选择器")
                    }
                    NavigationLink(destination: CommonSwitchPageView()){
                        PageCellRowView(title: "各种开关按钮", subTitle: "各种的开关按钮")
                    }
                }
                
                Section(header: Text("NavigationViewTabbar"))
                {
                    NavigationLink(destination:NavigationPageView()){
                        PageCellRowView(title: "NavigationView", subTitle: "NavigationView")
                    }
                    NavigationLink(destination: TabarPageView()){
                        PageCellRowView(title: "Tabbar", subTitle: "Tabbar")
                    }
                }
                
                Section(header: Text("List"))
                {
                    NavigationLink(destination:ListPageView()){
                        PageCellRowView(title: "List", subTitle: "列表容器")
                    }
                    NavigationLink(destination: ScrollVewPageView()){
                        PageCellRowView(title: "ScrollView", subTitle: "滚动视图")
                    }
                    NavigationLink(destination:ScrollVewPageView()){
                        PageCellRowView(title: "ForEach", subTitle: "用于根据已有数据的集合展示视图")
                    }
                    NavigationLink(destination: GroupPageView()){
                        PageCellRowView(title: "Group", subTitle: "用于集合多个视图，对Group设置的属性将作用于每个子视图")
                    }
                    
                    NavigationLink(destination: ListPageView()){
                        PageCellRowView(title: "Section", subTitle: "用于创建带头和尾部的视图内容，一般结合List组件使用")
                    }
                }
                
                Section(header: Text("Alert"))
                               {
                                   NavigationLink(destination:AlertPageView()){
                                       PageCellRowView(title: "Alert", subTitle: "Alert")
                                   }
                                   NavigationLink(destination: ActionSheetPageView()){
                                       PageCellRowView(title: "ActionSheet", subTitle: "ActionSheet")
                                   }
                               }
                
                Section(header: Text("简单UI布局学习"))
                              {
                                  NavigationLink(destination:ContentView()){
                                      PageCellRowView(title: "01", subTitle: "01")
                                  }
                                  NavigationLink(destination: LearnSwiftUI02View()){
                                      PageCellRowView(title: "02", subTitle: "02")
                                  }
//                                  NavigationLink(destination: LearnSwiftUI03View()){
//                                      PageCellRowView(title: "03", subTitle: "03")
//                                  }
                                  NavigationLink(destination: LearnSwiftUI04View()){
                                      PageCellRowView(title: "04", subTitle: "04")
                                  }
                                  
                                  NavigationLink(destination: ListPageView()){
                                      PageCellRowView(title: "05", subTitle: "05")
                                  }
                                NavigationLink(destination: LearnSwiftUI06View()){
                                    PageCellRowView(title: "06", subTitle: "06")
                                }
                                
                                NavigationLink(destination: LearnSwiftUI07View()){
                                    PageCellRowView(title: "07", subTitle: "07")
                                }
                                NavigationLink(destination: LearnSwiftUI08View()){
                                                                   PageCellRowView(title: "08", subTitle: "08")
                                                               }
                              }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("Right").foregroundColor(.orange)
            }))

        
               
        }
        
    }
}

struct HomeShowListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeShowListView()
    }
}
