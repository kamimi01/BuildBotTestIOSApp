//
//  Model.swift
//  BuildBotTest
//
//  Created by mikaurakawa on 2022/08/06.
//

import Foundation

class Model: ObservableObject {
    func checkAnswer(text: String) -> Bool {
        return text == "2" ? true : false
    }
}
