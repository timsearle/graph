//: Playground - noun: a place where people can play

import UIKit

var europe = Graph<Country>()

let france = Country(data: "France")
let belgium = Country(data: "Belgium")
let netherlands = Country(data: "Netherlands")
let luxembourg = Country(data: "Luxembourg")
let switzerland = Country(data: "Switzerland")
let germany = Country(data: "Germany")
let italy = Country(data: "Italy")
let spain = Country(data: "Spain")
let denmark = Country(data: "Denmark")
let imaginary = Country(data: "Imaginary")

europe.addVertex(france)
europe.addVertex(belgium)
europe.addVertex(netherlands)
europe.addVertex(luxembourg)
europe.addVertex(switzerland)
europe.addVertex(germany)
europe.addVertex(italy)
europe.addVertex(spain)
europe.addVertex(denmark)
europe.addVertex(imaginary)

europe.addEdge(from: france, to: belgium)
europe.addEdge(from: france, to: luxembourg)
europe.addEdge(from: france, to: germany)
europe.addEdge(from: france, to: switzerland)
europe.addEdge(from: france, to: italy)
europe.addEdge(from: france, to: spain)

europe.addEdge(from: belgium, to: netherlands)
europe.addEdge(from: belgium, to: luxembourg)
europe.addEdge(from: belgium, to: germany)

europe.addEdge(from: imaginary, to: germany)
europe.addEdge(from: imaginary, to: netherlands)

europe.addEdge(from: switzerland, to: germany)
europe.addEdge(from: switzerland, to: italy)

europe.addEdge(from: netherlands, to: denmark)

europe.isNeighbours(vertices: (imaginary,germany))


let search = GraphSearch<Country>()

search.bfs(graph: europe, source: france, vertex: netherlands)
