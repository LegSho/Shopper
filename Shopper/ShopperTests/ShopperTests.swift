//
//  ShopperTests.swift
//  ShopperTests
//
//  Created by Igor Tabacki on 11/23/17.
//  Copyright © 2017 Igor Tabacki. All rights reserved.
//

import XCTest

class ShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    /*ovo se pise da bi se test neki nas METOD zasigurno, a u Metod file, se na FILE INSPECTORU otkaci dole ispod "Shopper" i "ShopperTests" !!!
     
     OVAKO NESTO SE ZOVE ===== UNIT TEST ======
    */
    
    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
