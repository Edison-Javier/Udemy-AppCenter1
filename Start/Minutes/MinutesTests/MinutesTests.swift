//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Edison Javier Bonilla Quiceno on 22/11/24.
//  Copyright © 2024 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests : XCTest {
    
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Title", "Content")
    }

    override func tearDown() {
        entryUnderTest = nil
        super.tearDown()
    }
    
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)

        XCTAssertEqual(entry?.title, "Titles", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
}

