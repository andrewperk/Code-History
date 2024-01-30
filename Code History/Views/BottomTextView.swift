//
//  BottomTextView.swift
//  Code History
//
//  Created by Andrew L Perkins on 1/29/24.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(str: "Ok, let's go!")
}
