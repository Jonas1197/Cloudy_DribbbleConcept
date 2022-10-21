//
//  ArrowNextButton.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

struct ArrowNextButton: View {
    
    @Binding var buttonTapped: Bool
    
    @State private var animate: Bool = false
    
    private let animationDuraiont = 0.2
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.black)
                .frame(width: 80)
            
            Image(systemName: Constants.Symbol.arrowRight)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
        .shadow(radius: 12)
        .scaleEffect(x: animate ? 0.9 : 1,
                     y: animate ? 0.9 : 1,
                     anchor: .center)
        .onTapGesture {
            animateButton()
        }
    }
    
    private func animateButton() {
        buttonTapped.toggle()
        
        withAnimation(.easeInOut(duration: animationDuraiont)) {
            animate.toggle()
        }
        
        Timer.scheduledTimer(withTimeInterval: animationDuraiont, repeats: false) { timer in
            withAnimation(.easeInOut(duration: animationDuraiont)) {
                animate.toggle()
            }
            timer.invalidate()
            
        }
    }
}

struct ArrowNextButton_Previews: PreviewProvider {
    static var previews: some View {
        ArrowNextButton(buttonTapped: .constant(false))
    }
}
