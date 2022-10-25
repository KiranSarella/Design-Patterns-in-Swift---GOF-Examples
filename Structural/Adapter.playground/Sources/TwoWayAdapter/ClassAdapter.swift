import Foundation

/*
 
 The solution involves a two-way class adapter ConstraintStateVariable, a subclass of both StateVariable and ConstraintVariable, that adapts the two interfaces to each other.
 
 Multiple inheritance is a viable solution in this case because the interfaces of the adapted classes are substantially different.
 
 The two-way class adapter conforms to both of the adapted classes and can work in either system.
 
 
 */

// how to achive this mulitple inheritance in swift? -- from class inheritance to protocol inheritance will work.

public class ConstraintStateAdapter: Constraint, State {
    
    public init() { }
    
}

