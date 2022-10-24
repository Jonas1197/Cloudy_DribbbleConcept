//
//  Cloudy_DribbbleConceptApp.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

@main
struct Cloudy_DribbbleConceptApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ObservablePath())
        }
    }
}
