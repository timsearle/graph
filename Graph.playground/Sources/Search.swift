import Foundation

public class GraphSearch<V> where V: GraphVertexRepresentable {
    
    public init() {
        
    }
    
    public func bfs(graph: Graph<V>, source: V, vertex: V) -> (Bool,Int)? {
        
        var queue = Queue<V>()
        queue.enqueue(source)
        source.distance = 0
        
        var visited = [Bool](repeating: false, count: graph.vertices.count)
        
        visited[source.index] = true
        
        while let nextVertex = queue.dequeue() {
            
            print(nextVertex)
            
            if vertex == nextVertex {
                return (true, nextVertex.distance!)
            }
            
            for edge in graph.edges(of: nextVertex) {
                let neighbour = edge.to
                
                if !visited[neighbour.index] {
                    queue.enqueue(neighbour)
                    neighbour.distance = nextVertex.distance! + 1
                    visited[neighbour.index] = true
                }
            }
        }
        
        
        return nil
    }
}
