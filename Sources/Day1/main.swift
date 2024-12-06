import AoCInputs

struct Day1 {
    let input: [String]
    
    func partOne() -> Int {
        var listOne: [Int] = []
        var listTwo: [Int] = []
        
        for line in input {
            let numbers = line.split(separator: " ")
            
            assert(numbers.count == 2)
            listOne.append(Int(numbers.first!)!)
            listTwo.append(Int(numbers.last!)!)
        }
        
        let sortedListOne = listOne.sorted()
        let sortedListTwo = listTwo.sorted()
        
        var distances: [Int] = []
        let pairs = zip(sortedListOne, sortedListTwo)
        for pair in pairs {
            let distance = abs(pair.0 - pair.1)
            distances.append(distance)
        }
        
        let totalDistance = distances.reduce(0, +)
        return totalDistance
    }
    
    func partTwo() -> Int {
        var listOne: [Int] = []
        var listTwo: [Int] = []
        
        for line in input {
            let numbers = line.split(separator: " ")
            
            assert(numbers.count == 2)
            listOne.append(Int(numbers.first!)!)
            listTwo.append(Int(numbers.last!)!)
        }
        
        var totalSimilarityScore: Int = 0
        
        for number in listOne {
            let listTwoCount = listTwo.filter({ $0 == number }).count
            let similarityScore = number * listTwoCount
            
            totalSimilarityScore += similarityScore
        }
        
        return totalSimilarityScore
    }
}

var day1 = Day1(input: Input.day1_example)
let partOneExample = day1.partOne()
let partTwoExample = day1.partTwo()

day1 = Day1(input: Input.day1_input)
let partOneInput = day1.partOne()
let partTwoInput = day1.partTwo()

print("Part 1 (example): \(partOneExample)")
print("Part 1 (input): \(partOneInput)")
print("Part 2 (example): \(partTwoExample)")
print("Part 2 (input): \(partTwoInput)")
