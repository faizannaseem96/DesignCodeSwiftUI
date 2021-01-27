//
//  CourseList.swift
//  DesignCodeSwiftUI
//
//  Created by Faizan  Naseem on 25/01/2021.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        List(0 ..< 5) { item in
            CourseRow(item: courseSections[0])
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Courses")
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
