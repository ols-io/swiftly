import XCTest

class Arrays: XCTestCase {
    
    func testEmptyArrayCreation() {
        let emptyArrayFromFunction = String[]()
        assertArraySize(emptyArrayFromFunction, count: 0)
        
        let emptyArrayFromInitializer: String[] = []
        assertArraySize(emptyArrayFromInitializer, count: 0)
    }
    
    func testAddingItemToArrayWithOverLoad() {
        var testArray = String[]()
        assertArraySize(testArray, count: 0)
        
        testArray += "Item1"
        assertArraySize(testArray, count: 1)
        
        testArray += ["Item2", "Item3", "Item4"]
        assertArraySize(testArray, count: 4)
    }
    
    func testAddingItemToArrayWithAppend() {
        var testArray = String[]()
        assertArraySize(testArray, count: 0)
        
        testArray.append("Item1")
        assertArraySize(testArray, count: 1)
        
        for item in ["Item2", "Item3", "Item4"] {
            testArray.append(item)
        }
        assertArraySize(testArray, count: 4)
    }
    
    
    func testRemovingItemToArray() {
        var testArray = ["Item1", "Item2"]
        assertArraySize(testArray, count: 2)
        
        testArray.removeAtIndex(0)
        assertArraySize(testArray, count: 1)
        XCTAssertEqual("Item2", testArray[0], "Item 2 was moved to the first index")
    }
    
    func testArrayMapTypeConversion() {
        var testArray = [1, 2, 3]
        assertArraySize(testArray, count: 3)
        
        let mapResult = testArray.map {
            (item: Int) -> String in
            let result = String(item * item)
            return result
        }
        
        assertArraySize(mapResult, count: 3)
        XCTAssertEqual(mapResult[0], "1")
        XCTAssertEqual(mapResult[1], "4")
        XCTAssertEqual(mapResult[2], "9")
    }
    
    
    func assertArraySize(emptyArray: AnyObject[], count: Int) {
        XCTAssertNotNil(emptyArray, "Should not be nil")
        XCTAssert(emptyArray.count == count, "Empty arrays should have \(count) elements.")
    }
}
