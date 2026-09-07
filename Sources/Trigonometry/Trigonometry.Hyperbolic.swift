extension Trigonometry {
    /// The real hyperbolic functions. Numerical backends document their accuracy.
    public protocol Hyperbolic: FloatingPoint {
        static func sinh(_ x: Self) -> Self
        static func cosh(_ x: Self) -> Self
        static func tanh(_ x: Self) -> Self
        static func asinh(_ x: Self) -> Self
        static func acosh(_ x: Self) -> Self
        static func atanh(_ x: Self) -> Self
    }
}
