//
//  LoginPageTests.swift
//  LoginPageTests
//
//  Created by admin on 18/10/22.
//

import XCTest
@testable import LoginPage

class LoginPageTests: XCTestCase {

    var app : Test1!
    let email = "mandara330@gmail.com"
    let password = "12345567899"

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        app = nil
    }
    
    func testCanCreatenil() {
        let app = Test1(
        email: email,
        password: password)
        
        XCTAssertNotNil(app)
     }
    
    func testCaseShouldPassValidEmail(){
        let app = Test1(
            email: email,
            password: password)
        
        XCTAssertTrue(app.isValidEmail())
    }
    
    func testCaseShouldPassInvalidEmail(){
        let app = Test1(
            email: "test.com",
            password: password)
        XCTAssertFalse(app.isValidEmail())
    }
    
    func testcaseshouldpassinvalidemail(){
        let app = Test1(
            email: "test@123",
            password: password)
        XCTAssertFalse(app.isValidEmail())
    }
    
    
    func  testShouldPassIfInvalidPasswordLength(){
        let app = Test1(
            email: email,
            password: "123")
        XCTAssertFalse(app.isValidPasswordLength())
    }
    
    func testShouldPassIfValidPasswordLength() {
        let app = Test1(
        email: email,
        password: password)
        
        XCTAssertTrue(app.isValidPasswordLength())
    }

}
