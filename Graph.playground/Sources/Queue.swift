import Foundation

struct Queue<T> {
    private var queue: [T] = []
    
    var count: Int {
        return queue.count
    }
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    mutating func enqueue(_ item: T) {
        queue.append(item)
    }
    
    mutating func dequeue() -> T? {
        if !isEmpty {
            return queue.removeFirst()
        }
        
        return nil
    }
}
