//
//  ContentView.swift
//  BuildBotTest
//
//  Created by mikaurakawa on 2022/08/06.
//

import SwiftUI

struct ContentView: View {
    @State private var number = ""
    @ObservedObject var model: Model
    
    var body: some View {
        VStack {
            Spacer()
            Text("1 + 1 は？")
            TextField("答え", text: $number)
                .padding()
            Text(answer(text: number))
            Spacer()
        }
    }
}

private extension ContentView {
    func answer(text: String) -> String {
        if text.isEmpty {
            return "入力がないよ"
        }
        if model.checkAnswer(text: text) {
            return "正解！👏"
        }
        return "不正解・・・🥲"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: Model())
    }
}
