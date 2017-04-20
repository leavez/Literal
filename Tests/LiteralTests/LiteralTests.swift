import XCTest
@testable import Literal


class LiteralTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testCGPoint() {
        let p: CGPoint = [1, 3]
        XCTAssertEqual(p, CGPoint(x:1, y:3))
        XCTAssertNotEqual(p, CGPoint(x:1, y:2))
        #if RELEASE
            let p3: CGPoint = [1, 3, 100]
            XCTAssertEqual(p3, CGPoint(x:1, y:3))
        #endif
    }
    func testCGSize() {
        let p: CGSize = [1, 3]
        XCTAssertEqual(p, CGSize(width:1, height:3))
        XCTAssertNotEqual(p, CGSize(width:1, height:2))
        #if RELEASE
            let p3: CGSize = [1, 3, 100]
            XCTAssertEqual(p3, CGSize(width:1, height:3))
            let p4: CGSize = [1]
            XCTAssertEqual(p4, CGSize(width:1, height:0))
        #endif
    }
    func testCGRect() {
        let p: CGRect = [1, 2, 3, 4]
        XCTAssertEqual(p, CGRect(x:1,y:2,width:3,height:4))
        XCTAssertNotEqual(p, CGRect(x:1,y:2,width:3,height:5))
        #if RELEASE
            let p3: CGRect = [1, 3, 100, 100, 11]
            XCTAssertEqual(p3, CGRect(x:1,y:3,width:100,height:100))
            let p4: CGRect = [1,2]
            XCTAssertEqual(p4, CGRect(x:1,y:2,width:0,height:0))
        #endif
    }
    func testCGVector() {
        let p: CGVector = [1, 3]
        XCTAssertEqual(p, CGVector(dx:1, dy:3))
        XCTAssertNotEqual(p, CGVector(dx:1, dy:2))
        #if RELEASE
            let p3: CGVector = [1, 3, 100]
            XCTAssertEqual(p3, CGVector(dx:1, dy:3))
            let p4: CGVector = [1]
            XCTAssertEqual(p4, CGVector(dx:1, dy:0))
        #endif
    }
    func testNSRange() {
        let p: NSRange = [1, 3]
        let target = NSMakeRange(1, 3)
        func equal(_ a:NSRange, _ b: NSRange ) {
            XCTAssertEqual(a.location, b.location)
            XCTAssertEqual(a.length, b.length)
        }
        equal(p, target)

        #if RELEASE
            let p3: NSRange = [1, 3, 100]
            equal(p3, target)
            let p4: NSRange = [1]
            equal(p4, NSMakeRange(1,0))
        #endif
    }
    func testUIEdgeInsets() {
//            let p: UIEdgeInsets = [1, 2, 3, 4]
//            let target = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
//            XCTAssertEqual(p, target)
//            XCTAssertNotEqual(p, UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 5))
//            #if RELEASE
//                let p3: UIEdgeInsets = [1, 2, 3, 4, 11]
//                XCTAssertEqual(p3, target)
//                let p4: UIEdgeInsets = [1,2]
//                XCTAssertEqual(p4, UIEdgeInsets(top: 1, left: 2, bottom: 0, right: 0))
//            #endif
    }
    func testCharacterSet() {
        let p: CharacterSet = "123"
        XCTAssertEqual(p, CharacterSet(charactersIn: "123"))
        XCTAssertNotEqual(p, CharacterSet(charactersIn: "12"))
    }






    static var allTests = [
        ("testCGPoint", testCGPoint),
        ("testCGSize", testCGSize),
        ("testCGRect", testCGRect),
        ("testCGVector", testCGVector),
        ("testUIEdgeInsets", testUIEdgeInsets),
        ("testNSRange", testNSRange),
        ("testCharacterSet", testCharacterSet),
        ]
}
