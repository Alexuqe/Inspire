import SwiftUI

public struct ColorStyles {
    public let primary: Color               // orange
    public let secondary: Color             // dark orange
    public let background: Color            // gray
    public let backgroundAlt: Color         // dark gray
    public let backgroundLightAlt: Color    // light gray
    public let corner: Color                // white
    public let cornerAlt: Color             // gray
    public let primaryText: Color           // black
    public let primaryTextAlt: Color        // white
    public let secondaryText: Color         // gray
    public let secondaryAlt: Color          // dark gray

    public var linerGradient: LinearGradient {
        .linearGradient(
            stops: [
                Gradient.Stop.init(color: secondary, location: 0.0),
                Gradient.Stop.init(color: primary, location: 1.0)
            ],
            startPoint: UnitPoint(x: 0, y: 0.59),
            endPoint: UnitPoint(x: 1.19, y: 0.76)
        )
    }
}

extension ColorStyles {
    public static let orange = ColorStyles.createStyle(primary: "FF9469")
    public static let blue = ColorStyles.createStyle(primary: "0067FF")

    public static func palette(_ scheme: ColorScheme) -> ColorStyles {
        scheme == .dark ? blue : orange
    }

    static func createStyle(primary: String) -> ColorStyles {
        ColorStyles(
            primary: .init(hex: primary),
            secondary: .init(hex: "FE7669"),
            background: .init(hex: "F3F3F3"),
            backgroundAlt: .init(hex: "767A82").opacity(20),
            backgroundLightAlt: .init(hex: "D2D2D2").opacity(20),
            corner: .white,
            cornerAlt: .init(hex: "DADADA"),
            primaryText: .init(hex: "222128"),
            primaryTextAlt: .white,
            secondaryText: .init(hex: "797981"),
            secondaryAlt: .init(hex: "69696B")
        )
    }
}
