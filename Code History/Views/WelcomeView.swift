//
//  WelcomeView.swift
//  Code History
//
//  Created by Andrew L Perkins on 1/29/24.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Ok, let's go!")
                        }
                    )
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
