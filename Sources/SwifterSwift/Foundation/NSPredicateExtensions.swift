// NSPredicateExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by NOT-ing the predicate.
    var not: NSCompoundPredicate {
        return NSCompoundPredicate(notPredicateWithSubpredicate: self)
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by AND-ing the argument to the predicate.
    ///
    /// - Parameter predicate: NSPredicate.
    /// - Returns: NSCompoundPredicate.
    func and(_ predicate: NSPredicate) -> NSCompoundPredicate {
        return NSCompoundPredicate(andPredicateWithSubpredicates: [self, predicate])
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by OR-ing the argument to the predicate.
    ///
    /// - Parameter predicate: NSPredicate.
    /// - Returns: NSCompoundPredicate.
    func or(_ predicate: NSPredicate) -> NSCompoundPredicate {
        return NSCompoundPredicate(orPredicateWithSubpredicates: [self, predicate])
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by NOT-ing the predicate.
    /// - Parameters: rhs: NSPredicate to convert.
    /// - Returns: NSCompoundPredicate
    static prefix func ! (rhs: NSPredicate) -> NSCompoundPredicate {
        return rhs.not
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by AND-ing the argument to the predicate.
    ///
    /// - Parameters:
    ///   - lhs: NSPredicate.
    ///   - rhs: NSPredicate.
    /// - Returns: NSCompoundPredicate
    static func + (lhs: NSPredicate, rhs: NSPredicate) -> NSCompoundPredicate {
        return lhs.and(rhs)
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by OR-ing the argument to the predicate.
    ///
    /// - Parameters:
    ///   - lhs: NSPredicate.
    ///   - rhs: NSPredicate.
    /// - Returns: NSCompoundPredicate
    static func | (lhs: NSPredicate, rhs: NSPredicate) -> NSCompoundPredicate {
        return lhs.or(rhs)
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension NSPredicate {
    /// SwifterSwift: Returns a new predicate formed by remove the argument to the predicate.
    ///
    /// - Parameters:
    ///   - lhs: NSPredicate.
    ///   - rhs: NSPredicate.
    /// - Returns: NSCompoundPredicate
    static func - (lhs: NSPredicate, rhs: NSPredicate) -> NSCompoundPredicate {
        return lhs + !rhs
    }
}
#endif
