//
//  ArrowNextButton.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

struct ArrowNextButton: View {
    
    @State private var animate: Bool = false
    @EnvironmentObject private var rootRoute: ObservablePath
    @AppStorage(Constants.UserDefaultsKey.navigationPath) private var path: Path = .homescreen
    
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
        .overlay {
            NavigationLink(value: Path.homescreen) {
                Text("jesus")
                    .bold()
            }
        }
    }
    
    private func animateButton() {
        withAnimation(.easeInOut(duration: animationDuraiont)) {
            animate.toggle()
        }
        
        Timer.scheduledTimer(withTimeInterval: animationDuraiont, repeats: false) { timer in
            withAnimation(.easeInOut(duration: animationDuraiont)) {
                animate.toggle()
                
                Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in
                    path = .homescreen
                    rootRoute.route = path
                    timer.invalidate()
                }
            }
            
            timer.invalidate()
        }
    }
}

struct ArrowNextButton_Previews: PreviewProvider {
    static var previews: some View {
        ArrowNextButton()
    }
}
