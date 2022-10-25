import UIKit



/// Basic Example
/// loads at run time


/*
// initialize appropriate stratagy at run time

/*
 Clients usually create and pass a ConcreteStrategy object to the context.
 There is often a family of ConcreteStrategy classes for a client to choosefrom.
 */

// client will create required strategy and pass it to operation object.
let quick = Composition(compositor: SimpleCompositor())
let slick = Composition(compositor: TeXCompositor())
let iconic = Composition(compositor: ArrayCompositor(interval: 100))

*/
 

/// Strategies as template parameters
/// loads at compile time
let context = Context(strategy: TeXCompositor())
context.operation()

