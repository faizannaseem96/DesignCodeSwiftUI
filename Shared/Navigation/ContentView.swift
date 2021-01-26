//
//  ContentView.swift
//  Shared
//
//  Created by Faizan  Naseem on 25/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SideBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
