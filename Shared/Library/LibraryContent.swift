//
//  LibraryContent.swift
//  DesignCodeSwiftUI
//
//  Created by Faizan  Naseem on 26/01/2021.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(CloseButton(),title: "Close Button", category: .control)
    }
    
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(base.cardStyle(), title: "Card Style", category: .effect)
    }
}

extension View {
    func cardStyle() -> some View {
        return self
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
            .shadow(color: Color.blue.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}
