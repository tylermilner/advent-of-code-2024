import Foundation

public struct Input {
    public static let day1_example = contents(of: "day1_example1")
    public static let day1_input = contents(of: "day1_input1")
}

private extension Input {
    static func contents(of input: String) -> [String] {
        let url = Bundle.url(forTextFile: input)
        let fileContents = try! String(contentsOf: url)
        let lines = fileContents.split(separator: "\n")
        return lines.map { String($0) }
    }
}

private extension Bundle {
    static func url(forTextFile textFile: String) -> URL {
        return module.url(forResource: textFile, withExtension: "txt")!
    }
}
