import AoCInputs
import XCTest
@testable import Day1

final class Day1Tests: XCTestCase {
    func test_part1_example() {
        // Arrange
        let day1 = Day1(input: Input.day1_example)
        
        // Act
        let result = day1.partOne()
        
        // Assert
        XCTAssertEqual(result, 11)
    }
    
    func test_part1_input() {
        // Arrange
        let day1 = Day1(input: Input.day1_input)
        
        let result = day1.partOne()
        
        XCTAssertEqual(result, 1197984)
    }
    
    func test_part2_example() {
        // Arrange
        let day1 = Day1(input: Input.day1_example)
        
        let result = day1.partTwo()
        
        XCTAssertEqual(result, 31)
    }
    
    func test_part2_input() {
        // Arrange
        let day1 = Day1(input: Input.day1_input)
        
        let result = day1.partTwo()
        
        XCTAssertEqual(result, 23387399)
    }
}
