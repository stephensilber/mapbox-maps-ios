import Foundation

/// Supported light types
public struct LightType: RawRepresentable, Codable {

    /// A global directional light.
    public static let flat = LightType(rawValue: "flat")

    /// An indirect type of light.
#if swift(>=5.8)
    @_documentation(visibility: public)
#endif
    @_spi(Experimental) public static let ambient = LightType(rawValue: "ambient")

    /// A type of light that has a direction.
#if swift(>=5.8)
    @_documentation(visibility: public)
#endif
    @_spi(Experimental) public static let directional = LightType(rawValue: "directional")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}
