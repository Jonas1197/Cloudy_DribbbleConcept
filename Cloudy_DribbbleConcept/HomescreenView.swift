//
//  HomescreenView.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

struct HomescreenView: View {
    var body: some View {
        ZStack {
            
            Image(uiImage: Constants.Media.onboardingBackground)
                .resizable()
                .ignoresSafeArea()
            
            Text("Homescreen")
                .font(.custom(Constants.Font.bold, size: 36))
                .foregroundColor(.white)
            
        }
    }
}

struct HomescreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomescreenView()
    }
}
