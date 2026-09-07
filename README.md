# Trigonometry

Trigonometry defines numerical contracts for real circular and hyperbolic functions. Circular arguments and inverse-function results use radians. `Trigonometry.Circular` and `Trigonometry.Hyperbolic` can be adopted independently; `Trigonometry.Protocol` combines them. This lets an angle require circular functions without requiring exponentials, powers, or hyperbolic functions.

Circular sine, cosine, and tangent approximate their real mathematical functions for finite inputs. Infinite inputs produce NaN. Inverse sine and cosine have domain [-1, 1] and principal ranges [-pi/2, pi/2] and [0, pi]. Arctangent has principal range [-pi/2, pi/2], including its infinite limits. `atan2(y, x)` determines the principal quadrant from both arguments; signed zero distinguishes the two sides of the negative real axis, including (+/-0, -0) giving +/-pi. The all-positive-zero pair gives positive zero. NaN arguments propagate NaN.

Hyperbolic functions approximate the real sinh, cosh, and tanh and their principal inverses. asinh accepts every real value, acosh has domain [1, infinity], and atanh has domain [-1, 1] with infinite limits at its endpoints. Values outside an inverse function's real domain produce NaN. Odd functions preserve signed zero; cosh(0) is one. Infinite arguments follow the corresponding real limits.

A backend must document accuracy, supported rounding environments, and any platform differences. The protocols do not promise universal correct rounding, floating-point exception flags, or a particular NaN payload. There are no default substitute implementations.

Core and Foundation Integration contain no platform math implementation. The higher Numeric compatibility package supplies its existing platform implementations. SDK-backed conformances in this package's test target are reference fixtures only; they are not shipped in the core or Test Support products.
