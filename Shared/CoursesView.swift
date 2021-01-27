//
//  CoursesView.swift
//  DesignCodeSwiftUI
//
//  Created by Faizan  Naseem on 25/01/2021.
//

import SwiftUI

struct CoursesView: View {
    
    @State var show = false
    @Namespace var animation
    @State var selectedItem: Course? = nil
    @State var isDisabled: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 0) {
                    Text("Courses")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                        .padding(.top, 54)
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                        ForEach(courses) { item in
                            VStack {
                                CourseItem(course: item)
                                    .matchedGeometryEffect(id: item.id, in: animation, isSource: !show)
                                    .frame(height: 250)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            show.toggle()
                                            selectedItem = item
                                            isDisabled = true
                                        }
                                    }
                                    .disabled(isDisabled)
                            }
                            .matchedGeometryEffect(id: "container\(item.id)", in: animation, isSource: !show)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }
            }
            .zIndex(1.0)
            if let item = selectedItem {
                ZStack(alignment: .topLeading) {
                    CourseDetail(item: item, animation: animation)
                        
                    CloseButton()
                        .padding(.leading)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selectedItem = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isDisabled = false
                                }
                            }
                        }
                }
                .zIndex(2.0)
                .frame(maxWidth: 712)
                .frame(maxHeight: .infinity)
                .background(VisualEffectBlur().ignoresSafeArea())
            }
        }
        .navigationBarTitle("Courses")
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
