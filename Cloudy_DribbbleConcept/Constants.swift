//
//  Constants.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

enum Constants {
    
    //MARK: - Media
    enum Media {
        static let onboardingBackground = UIImage(named: "OnboardingBackground")!
        static let stars                = UIImage(named: "Stars")!
        static let separatorLine        = UIImage(named: "SeparatorLine")!
    }
    
    //MARK: - Symbol
    enum Symbol {
        static let arrowRight = "arrow.right"
    }
    
    //MARK: - Font
    enum Font {
        static let light    = "SpaceGrotesk-Light"
        static let regular  = "SpaceGrotesk-Regular"
        static let medium   = "SpaceGrotesk-Medium"
        static let bold     = "SpaceGrotesk-Bold"
        static let semibold = "SpaceGrotesk-SemiBol"
    }
    
    
    //MARK: - ExampleText
    enum ExampleText {
        enum Onboarding {
            static let title    = "The future of security"
            static let subtitle = "Sign up for access to our beta, and a chace at receiving 1GB cloud for free"
        }
    }
    
}
