//
//  CourseDetailSection.swift
//  DesignCodeSwiftUI
//
//  Created by Faizan  Naseem on 26/01/2021.
//

import SwiftUI

struct CourseDetailSection: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView {
                CourseItem(course: courses[0])
                    .frame(height: 300)
            }
            CloseButton()
                .padding()
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }
    }
}

struct CourseDetailSection_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailSection()
    }
}
