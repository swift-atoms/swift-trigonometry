# swift-trigonometry

Use this package when generic code needs the circular or hyperbolic functions of a floating-point scalar without choosing a math library: constrain to `Trigonometry.Circular`, `Trigonometry.Hyperbolic`, or both at once with `Trigonometry.Protocol`, and let the scalar type supply the implementation. The package ships the contract only, no conformances, so each conforming scalar brings its own backend. For angles that carry their unit in the type, use swift-angle, which builds on these protocols; for exponentials and logarithms, use swift-exponential.

## Laws

- Arguments to the circular functions and results of their inverses are in radians.
- The inverse functions return principal values: `asin(1)` is π/2, `acos(1)` is 0, and `atan(+∞)` is π/2.
- An argument outside a function's real domain yields NaN, never a trap: `asin` and `acos` beyond ±1, `acosh` below 1, `atanh` beyond ±1. A NaN or infinite argument to `sin` or `cos` also yields NaN.
- At the edge of a domain the result is the infinite limit: `atanh(±1)` is ±∞, `asinh(-∞)` is -∞, `tanh(+∞)` is 1.
- Signed zero is preserved: `sin(-0)` and `sinh(-0)` are -0, and `atan2(y, x)` uses the sign of a zero `y` to choose between π and -π on the negative axis, so `atan2(0, -0)` is π and `atan2(-0, -0)` is -π.
