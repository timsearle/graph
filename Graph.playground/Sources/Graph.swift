import Foundation

public class Graph<V> where V: GraphVertexRepresentable {
    
    private var adjacencyList: [V : [GraphEdge<V>]] = [:]
    
    public init() {
        
    }
    
    public var vertices: [V] {
        return adjacencyList.keys.map({ return $0 })
    }
    
    public func addVertex(_ vertex: V) -> Bool {
        guard self.adjacencyList[vertex] == nil else {
            return false
        }
        
        vertex.index = self.adjacencyList.count
        self.adjacencyList[vertex] = []
        
        return true
    }
    
    public func addEdge(from source: V, to destination: V) -> Bool {
        guard var vertexEdgeMapSource = self.adjacencyList[source],
            var vertexEdgeMapDestination = self.adjacencyList[destination] else {
            return false
        }
        
        let sourceEdge = GraphEdge(from: source, to: destination)
        let reverseEdge = GraphEdge(from: destination, to: source)
        
        guard vertexEdgeMapSource.contains(sourceEdge) == false &&
            vertexEdgeMapDestination.contains(reverseEdge) == false else {
            return false
        }
        
        vertexEdgeMapSource.append(sourceEdge)
        vertexEdgeMapDestination.append(reverseEdge)
        
        self.adjacencyList[source] = vertexEdgeMapSource
        self.adjacencyList[destination] = vertexEdgeMapDestination
        
        return true
    }
    
    public func edges(of vertex: V) -> [GraphEdge<V>] {
        return self.adjacencyList[vertex] ?? []
    }
    
    public func neighbours(of vertex: V) -> [V] {
        let edges = self.edges(of: vertex)
        
        return edges.map { (edge) -> V in
            return edge.to
        }
    }
    
    public func isNeighbours(vertices: (V,V)) -> Bool {
        let (a,b) = vertices
        
        let edges = self.adjacencyList[a] ?? []
        
        return edges.contains(where: { $0.to == b })
    }
    
}
