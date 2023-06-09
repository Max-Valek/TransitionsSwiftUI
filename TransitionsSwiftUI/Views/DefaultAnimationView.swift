//
//  DefaultAnimationView.swift
//  TransitionsSwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

/*
 
 DEFAULT ANIMATION
 
 */

struct DefaultAnimationView: View {
    
    @State private var isVisible: Bool = false
    
    var body: some View {
        
        VStack {
            
            if isVisible {
                
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(.blue)
                    .frame(width: 100, height: 100)
            }
            
            Button("Toggle Visibility") {
                withAnimation(.linear(duration: 0.25)) {
                    isVisible.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct DefaultAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultAnimationView()
    }
}
