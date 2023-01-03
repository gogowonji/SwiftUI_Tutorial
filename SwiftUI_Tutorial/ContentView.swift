//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by 지원 on 1/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            MyVstackView()
            MyVstackView()
            MyVstackView()
        }.padding(10).background(Color.yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
