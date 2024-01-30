//
//  QuestionView.swift
//  Code History
//
//  Created by Andrew L Perkins on 1/29/24.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    })
                }
            }
        }
    }
}

#Preview {
    QuestionView(question: Game().currentQuestion)
}
