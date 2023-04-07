//
//  ContentView.swift
//  TransitionsSwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        // Put our transitions in a grid
        
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
            
            Group {
                
                // DEFAULT
                DefaultAnimationView()
                
                // OPACITY
                TemplateAnimationView(title: "Toggle Opacity", transition: .opacity)
                
                // MOVE
                // in and out from top
                TemplateAnimationView(title: "Toggle Move Top", transition: .move(edge: .top))
                // in and out from bottom
                TemplateAnimationView(title: "Toggle Move Bottom", transition: .move(edge: .bottom))
                // in and out from left
                TemplateAnimationView(title: "Toggle Move Leading", transition: .move(edge: .leading))
                // in and out from right
                TemplateAnimationView(title: "Toggle Move Trailing", transition: .move(edge: .trailing))
                
                // SLIDE
                // in from left, out to right
                TemplateAnimationView(title: "Toggle Slide", transition: .slide)
                
                // SCALE
                // grows from nothing to full view
                TemplateAnimationView(title: "Toggle Scale", transition: .scale)
                // from 50% to full size
                TemplateAnimationView(title: "Toggle Scale from 50%", transition: .scale(scale: 0.5))
                // from 50% to full size, expand from top left to bottom right
                TemplateAnimationView(title: "Toggle Scale from 50% top left",
                                      transition: .scale(scale: 0.5, anchor: .topLeading))
            }
            
            Group {
                
                // COMBINE
                // combine slide, scale, and opacity into one transition
                let combinationTransition = AnyTransition
                    .slide
                    .combined(with: .scale(scale: 0.5))
                    .combined(with: .opacity)
                
                TemplateAnimationView(title: "Toggle Combined", transition: combinationTransition)
                
                // ASYMMETRIC
                // use move when inserting the view, slide when removing it
                let asymmetricTransition = AnyTransition
                    .asymmetric(insertion: .move(edge: .bottom), removal: .slide)
                
                TemplateAnimationView(title: "Toggle Asymmetric", transition: asymmetricTransition)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
