//
//  BuildBotTestTests.swift
//  BuildBotTestTests
//
//  Created by mikaurakawa on 2022/08/06.
//

import XCTest
@testable import BuildBotTest

class BuildBotTestTests: XCTestCase {
    private var model = Model()
    
    override func setUp() {
        model = Model()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_checkAnswer()  {
        XCTContext.runActivity(named: "1+1の計算結果処理") { _ in
            XCTContext.runActivity(named: "入力が空の場合、falseが返ること") { _ in
                let answer = model.checkAnswer(text: "")
                XCTAssertEqual(answer, false)
            }
            XCTContext.runActivity(named: "入力が3の場合、falseが返ること") { _ in
                let answer = model.checkAnswer(text: "3")
                XCTAssertEqual(answer, false)
            }
            XCTContext.runActivity(named: "入力が2の場合、trueが返ること") { _ in
                let answer = model.checkAnswer(text: "2")
                XCTAssertEqual(answer, true)
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
