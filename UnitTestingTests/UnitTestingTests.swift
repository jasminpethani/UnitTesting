//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Jasmin Pethani on 20/04/18.
//  Copyright © 2018 Jasmin Pethani. All rights reserved.
//

import XCTest
@testable import UnitTesting
 

class UnitTestingTests: XCTestCase {
	var alertVerifier: QCOMockAlertVerifier!

	// System under test  view controller
	var sut: ViewController!
	
	override func setUp() {
		super.setUp()

		// setup viewcontrller and load view
		sut = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
		UIApplication.shared.keyWindow?.rootViewController = sut
		sut.loadViewIfNeeded()
	}
	
	override func tearDown() {
		sut = nil
		alertVerifier = nil
		super.tearDown()
	}
	
	func test_alert_buttonOK() {
		alertVerifier = QCOMockAlertVerifier()
		sut.doSomething()
		alertVerifier.executeActionForButton(withTitle: "OK")
	}
	
	func test_alert_buttonCancel() {
		alertVerifier = QCOMockAlertVerifier()
		sut.doSomething()
		alertVerifier.executeActionForButton(withTitle: "Cancel")
	}
	
}
