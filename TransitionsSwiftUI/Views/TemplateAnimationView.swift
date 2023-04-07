//
//  OpacityAnimationView.swift
//  TransitionsSwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

/*
 
 TEMPLATE FOR CREATING TRANSITIONS
 
 */

struct TemplateAnimationView: View {
    
    @State private var isVisible: Bool = false
    
    // title to show on button
    let title: String
    // transition to use
    let transition: AnyTransition
    
    var body: some View {
        
        VStack {
            
            if isVisible {
                
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .transition(transition)
            }
            
            Button(title) {
                withAnimation(.linear(duration: 0.25)) {
                    isVisible.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding()
        }
        .frame(maxWidth: .infinity, minHeight: 250)
        .background(.gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

struct OpacityAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TemplateAnimationView(title: "Template", transition: .opacity)
    }
}
