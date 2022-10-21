//
//  ContentView.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        OnboardingView(stateModel: .init(model: .example))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
