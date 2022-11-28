//
//  AppLaunchTests.swift
//  AppLaunchTests
//
//  Created by fjcedron@hiberus.com on 24/11/22.
//

import XCTest
@testable import AppLaunch

final class AppLaunchTests: XCTestCase {
    
    var sut: MyViewController!
    
    override func setUpWithError() throws {
//        sut = MyViewController()
        sut = MyAssembly.buildMyView()
        sut.loadViewIfNeeded()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_buttonActionNotNil() throws {
        // Arrange - Checks for IBOutlet
        let signupButton: UIButton = try XCTUnwrap(sut.testButton, "Signup button does not have a referencing outlet")
        
        // Act - Get the ActionName and TitleLabelText
        let signupButtonActions = try XCTUnwrap(signupButton.actions(forTarget: sut, forControlEvent: .touchUpInside), "Signup button does not have any actions assigned to it")
        
        print("Actions del botón: \(signupButtonActions)")
        
        // Assert - Check for IBAction
        XCTAssertEqual(signupButtonActions.count, 1)
        XCTAssertEqual(signupButtonActions.first, "buttonTapped:", "There is no action with a name signupButtonTapped assigned to signup button")
    }
}
