//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Edison Javier Bonilla Quiceno on 22/11/24.
//  Copyright © 2024 Microsoft. All rights reserved.
//

import Testing
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
    
    //@Test
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)

        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
}

