//
//  ContentView.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

final class ObservablePath: ObservableObject {
    @Published var route: Path
    @Published var navigate: Bool = false
    
    init() {
        guard let value = UserDefaults.standard.value(forKey: Constants.UserDefaultsKey.navigationPath) as? Path else {
            route = .onboarding
            return
        }
        
        route = value
    }
    
    func updatePath(_ path: Path) {
        self.route = path
        self.navigate.toggle()
    }
}

//enum Route: Hashable, Codable, CaseIterable {
//    case onboarding(OnboardingModel)
//    case homescreen
//}

enum Path: String, Codable, CaseIterable {
    case onboarding
    case homescreen
}

//MARK: - View
struct ContentView: View {
    
    @EnvironmentObject private var rootRoute: ObservablePath
    
    
    var body: some View {
        
        NavigationStack {
            OnboardingView(stateModel: .init(model: .example))
                .navigationDestination(for: Path.self) { newPath in

                    switch newPath {
                    case .homescreen:
                        HomescreenView()
                        
                    case .onboarding:
                        OnboardingView(stateModel: .init(model: .example))
                    }
                }
        }
    }
    
    private func presentView() -> any View {
        switch rootRoute.route {
        case .onboarding:
            return OnboardingView(stateModel: .init(model: .example))
            
        case .homescreen:
            return HomescreenView()
        }
    }
}

//MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
