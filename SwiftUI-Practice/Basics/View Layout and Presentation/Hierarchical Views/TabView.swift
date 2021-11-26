//
//  TabView.swift
//  SwiftUI-Practice
//
//  Created by hancock on 2021/11/26.
//

import SwiftUI

struct MyTabView: View {
    @State private var selection = 1
    
    var body: some View {
        ZStack(alignment: .top, content: {
            TabView(selection: $selection) {
                Text("ball")
                    .tabItem {
                        Image("ball")
                        Text("ball")
                    }
                    .tag(0)
                    .badge(1)
                
                Text("tableware")
                    .tabItem{
                        Text("tableware")
                        Image("tableware")
                    }
                    .tag(1)
                
            }
            .accentColor(.red)
            
            Button {
                selection = (selection + 1) % 2
            } label: {
                Text("next")
            }
        })
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
