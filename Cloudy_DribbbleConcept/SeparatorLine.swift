//
//  SeparatorLine.swift
//  Cloudy_DribbbleConcept
//
//  Created by Jonas Gamburg on 21.10.22.
//

import SwiftUI

struct SeparatorLine: View {
    var body: some View {
        HStack(spacing: 8) {
            RoundedRectangle(cornerRadius: 100)
                .foregroundColor(.white)
                .frame(width: 40, height: 6)
            
            Circle()
                .foregroundColor(.white.opacity(0.8))
                .frame(width: 6)
            
            Circle()
                .foregroundColor(.white.opacity(0.8))
                .frame(width: 6)
        }
    }
}

struct SeparatorLine_Previews: PreviewProvider {
    static var previews: some View {
        SeparatorLine()
    }
}
