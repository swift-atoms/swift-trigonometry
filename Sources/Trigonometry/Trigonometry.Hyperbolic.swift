extension Trigonometry {

    public protocol Hyperbolic: FloatingPoint {
        static func sinh(_ x: Self) -> Self
        static func cosh(_ x: Self) -> Self
        static func tanh(_ x: Self) -> Self
        static func asinh(_ x: Self) -> Self
        static func acosh(_ x: Self) -> Self
        static func atanh(_ x: Self) -> Self
    }
}
