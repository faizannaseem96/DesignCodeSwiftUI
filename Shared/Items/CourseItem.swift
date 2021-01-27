//
//  CourseItem.swift
//  DesignCodeSwiftUI
//
//  Created by Faizan  Naseem on 25/01/2021.
//

import SwiftUI

struct CourseItem: View {
    
    var course: Course
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
                
        }
        .padding(.all)
        .cardStyle()
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem(course: courses[0])
    }
}
