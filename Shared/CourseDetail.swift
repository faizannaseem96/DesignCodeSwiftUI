//
//  CourseDetail.swift
//  DesignCodeSwiftUI
//
//  Created by Faizan  Naseem on 25/01/2021.
//

import SwiftUI

struct CourseDetail: View {
    
    var item: Course
    var animation: Namespace.ID
    @State var showModal = false
    
    var body: some View {
        VStack {
            ScrollView {
                CourseItem(course: item)
                    .matchedGeometryEffect(id: item.id, in: animation)
                    .frame(height: 300)
                VStack {
                    ForEach(courseSections) { item in
                        CourseRow(item: item)
                            .sheet(isPresented: $showModal, content: {
                                CourseDetailSection()
                            })
                            .onTapGesture {
                                showModal = true
                            }
                        Divider()
                    }
                }
                .padding()
            }
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
        .matchedGeometryEffect(id: "container\(item.id)", in: animation)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        CourseDetail(item: courses[0], animation: namespace)
    }
}
