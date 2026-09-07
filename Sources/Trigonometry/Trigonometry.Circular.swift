extension Trigonometry {
    /// The real circular functions. Numerical backends document their accuracy.
    public protocol Circular: FloatingPoint {
        static func sin(_ x: Self) -> Self
        static func cos(_ x: Self) -> Self
        static func tan(_ x: Self) -> Self
        static func asin(_ x: Self) -> Self
        static func acos(_ x: Self) -> Self
        static func atan(_ x: Self) -> Self
        static func atan2(_ y: Self, _ x: Self) -> Self
    }
}
