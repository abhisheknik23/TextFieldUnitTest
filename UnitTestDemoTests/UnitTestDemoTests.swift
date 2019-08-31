//
//  UnitTestDemoTests.swift
//  UnitTestDemoTests
//
//  Created by Abhishek Gupta on 25/07/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import XCTest
@testable import UnitTestDemo


class UnitTestDemoTests: XCTestCase {
    var sut: ViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testTextFieldLimit() {
        // Set up view before interacting with the text field
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.loadView()
        
        // Test maximum number of allowable characters
        let atTheLimitString =
        String(repeating: Character("a"), count: maxNumCharacters)//String(count: maxNumCharacters, repeatedValue: Character("a"))
        let atTheLimitResult = vc.textField(vc.textFieldPassword, shouldChangeCharactersIn: NSRange(location: 0, length: 0), replacementString: atTheLimitString)
        XCTAssertTrue(atTheLimitResult, "The text field should allow \(maxNumCharacters) characters")
        
        // Test one more than the maximum number of allowable characters
        let overTheLimitString = String(repeating: Character("a"), count: maxNumCharacters+1)
        let overTheLimitResult = vc.textField(vc.textFieldPassword, shouldChangeCharactersIn: NSRange(location: 0, length: 0), replacementString: overTheLimitString)
        XCTAssertFalse(overTheLimitResult, "The text field should not allow \(maxNumCharacters+1) characters")
    }

}
