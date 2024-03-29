//
//  UnitTestDemoUITests.swift
//  UnitTestDemoUITests
//
//  Created by Abhishek Gupta on 25/07/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import XCTest

class UnitTestDemoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testTextField() {
        
        let app = XCUIApplication()
        let usernameTextField = app.textFields["UserName"]
        usernameTextField.tap()
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        
        let loginButton = app.buttons["Login"]
        loginButton.tap()
        usernameTextField.tap()
        usernameTextField.tap()
        loginButton.tap()
        
    }

}
