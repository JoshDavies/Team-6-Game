//
//  RiddleTests.swift
//  JackTheRipperTests
//
//  Created by Student on 28/11/2019.
//  Copyright © 2019 Team6. All rights reserved.
//

import XCTest
@testable import JackTheRipper

class RiddleTests: XCTestCase {
    let riddle = Riddle()


    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAnswerIsRight() {
        let result = riddle.isSolved(answer: "leather apron")
        XCTAssertEqual(result, "new location")
    }
    
    func testAnswerIsWrong() {
        let result = riddle.isSolved(answer: "no")
        XCTAssertEqual(result, "try again")
    }

}
