//
//  HintButtonsView.swift
//  Millionaire
//
//  Created by Максим Самороковский on 26.02.2024.
//

import SwiftUI

// MARK - Buttons hints
struct HintButtonsView: View {
    var body: some View {
        HStack {
            
            Button(action: {}) {
                Image("helpIcon1")
                    .renderingMode(.original)
            }
            
            Button(action: {}) {
                Image("helpIcon2")
                    .renderingMode(.original)
            }
            
            Spacer()
            TimerView()
            Spacer()
            
            Button(action: {}) {
                Image("helpIcon3")
                    .renderingMode(.original)
            }
          
            Button(action: {}) {
                Image("helpIcon4")
                    .renderingMode(.original)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 10)
    }
}

struct TimerView: View {
    var body: some View {
        VStack {
            Image("timer")
                .renderingMode(.original)
                .foregroundColor(.white)
                .font(.system(size: 12))
        }
    }
}
