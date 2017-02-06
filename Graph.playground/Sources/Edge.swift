import Foundation

public struct GraphEdge<V> where V: GraphVertexRepresentable {
    
    let from: V
    let to: V
}

extension GraphEdge: CustomStringConvertible {
    
    public var description: String {
        get {
            return "\(from.description) -> \(to.description)"
        }
    }
}

extension GraphEdge: Hashable {
    
    public var hashValue: Int {
        get {
            let string = "\(from.description)\(to.description)"
            return string.hashValue
        }
    }
}

extension GraphEdge: Equatable {
    
    public static func ==(lhs: GraphEdge<V>, rhs: GraphEdge<V>) -> Bool {
        return lhs.from == rhs.from && lhs.to == rhs.to
    }
}
