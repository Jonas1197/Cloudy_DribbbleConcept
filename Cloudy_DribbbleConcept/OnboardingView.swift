//
//  OnboardingView.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

struct OnboardingModel {
    let backgroundimage: UIImage
    let title:           String
    let subtitle:        String

    static let example = OnboardingModel(
        backgroundimage: Constants.Media.onboardingBackground,
        title: Constants.ExampleText.Onboarding.title,
        subtitle: Constants.ExampleText.Onboarding.subtitle)
}

final class OnboardingStateModel: ObservableObject {
    var model: OnboardingModel
    
    init(model: OnboardingModel) {
        self.model = model
    }
}

//MARK: - View
struct OnboardingView: View {
    
    @ObservedObject var stateModel: OnboardingStateModel
    
    @State var continueButtonTapped: Bool = false
    
    var body: some View {
        ZStack {
            
            Image(uiImage: stateModel.model.backgroundimage)
                .resizable()
                .ignoresSafeArea()
                
            
            VStack(alignment: .center, spacing: 20) {
                Spacer()
                    .frame(height: 36)
                
                Image(uiImage: Constants.Media.stars)
                    .resizable()
                    .frame(width: 140, height: 47)
                
                Text(stateModel.model.title)
                    .font(.custom(Constants.Font.bold, size: 48))
                    .foregroundColor(.white)
                
                Text(stateModel.model.subtitle)
                    .font(.custom(Constants.Font.regular, size: 14))
                    .foregroundColor(.white.opacity(0.6))
                
                SeparatorLine()
            }
            .multilineTextAlignment(.center)
            .padding([.leading, .trailing])
            .padding(.bottom, 200)
            
            VStack {
                Spacer()
                ArrowNextButton(buttonTapped: $continueButtonTapped)
                Spacer()
                    .frame(height: 36)
            }
        }
    }
}

//MARK: - Previews
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(stateModel: .init(model: .example))
    }
}
