import Foundation

public protocol GraphVertexRepresentable: class, Equatable, Hashable, CustomStringConvertible {
    associatedtype Data
    
    var data: Data {get set}
    var index: Int {get set}
    var distance: Int? {get set}
}
