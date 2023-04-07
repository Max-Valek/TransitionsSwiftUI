//
//  ContentView.swift
//  TransitionsSwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
            
            DefaultAnimationView()
            
            TemplateAnimationView(title: "Toggle Opacity", transition: .opacity)
            
            TemplateAnimationView(title: "Toggle Move Top", transition: .move(edge: .top))
            
            TemplateAnimationView(title: "Toggle Move Bottom", transition: .move(edge: .bottom))
            
            TemplateAnimationView(title: "Toggle Move Leading", transition: .move(edge: .leading))
            
            TemplateAnimationView(title: "Toggle Move Trailing", transition: .move(edge: .trailing))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
