//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Andrew L Perkins on 1/31/24.
//

import Foundation
import SwiftUI

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
