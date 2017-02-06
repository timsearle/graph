import Foundation

public class Country: GraphVertexRepresentable {
    public typealias Data = String
    
    public var data: Data
    public var index: Int = 0
    public var distance: Int?
    
    public init(data: Data) {
        self.data = data
    }
}

extension Country: Equatable, Hashable, CustomStringConvertible {
    
    public static func ==(lhs: Country, rhs: Country) -> Bool {
        return lhs.data == rhs.data
    }
    
    public var hashValue: Int {
        return data.hashValue
    }
    
    public var description: String {
        return "\(index): \(data)"
    }
}
