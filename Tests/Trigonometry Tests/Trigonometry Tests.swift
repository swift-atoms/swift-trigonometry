import Trigonometry
import Testing

@Suite struct `Reference trigonometry obeys the scalar contract` {
    @Test func `Circular functions use radians and principal inverse values`() {
        #expect(Double.sin(0) == 0 && Double.cos(0) == 1 && Double.tan(0) == 0)
        #expect(abs(Double.sin(.pi / 2) - 1) < 1e-15)
        #expect(abs(Double.asin(1) - .pi / 2) < 1e-15)
        #expect(Double.acos(1) == 0)
        #expect(Double.asin(2).isNaN && Double.acos(-2).isNaN)
        #expect(Double.sin(.infinity).isNaN && Double.cos(.nan).isNaN)
    }

    @Test func `Signed zero distinguishes the two sides of the negative axis`() {
        #expect(Double.sin(-0.0).sign == .minus)
        #expect(Double.atan2(0.0, -0.0) == .pi)
        #expect(Double.atan2(-0.0, -0.0) == -.pi)
        #expect(Double.atan2(-0.0, 0.0).sign == .minus)
        #expect(Double.atan(.infinity) == .pi / 2)
    }

    @Test func `Hyperbolic inverses respect their real domains and infinite limits`() {
        #expect(Double.sinh(-0.0).sign == .minus)
        #expect(Double.cosh(0) == 1 && Double.tanh(.infinity) == 1)
        #expect(Double.asinh(-.infinity) == -.infinity)
        #expect(Double.acosh(0).isNaN && Double.atanh(2).isNaN)
        #expect(Double.atanh(1) == .infinity && Double.atanh(-1) == -.infinity)
    }
}
