///Family: Plus Jakarta Sans, Font names: ["PlusJakartaSans-Light", "PlusJakartaSans-Medium", "PlusJakartaSans-SemiBold"]
///Family: Proxima Nova, Font names: ["ProximaNova-Regular", "ProximaNova-Semibold", "ProximaNova-Bold"]

import SwiftUI

public struct FontStyle {
    let family: Family
    let outline: Outline
    let size: CGFloat

    var font: Font {
        .custom(family.title(outline: outline), size: size)
    }
}

extension FontStyle {
    static let pBold14 = FontStyle(family: .proxima, outline: .bold, size: 14)

    static let pSemiBold42 = FontStyle(family: .proxima, outline: .semiBold, size: 42)
    static let pSemiBold36 = FontStyle(family: .proxima, outline: .semiBold, size: 36)
    static let pSemiBold30 = FontStyle(family: .proxima, outline: .semiBold, size: 30)
    static let pSemiBold20 = FontStyle(family: .proxima, outline: .semiBold, size: 20)

    static let pRegular22 = FontStyle(family: .proxima, outline: .regular, size: 22)
    static let pRegular20 = FontStyle(family: .proxima, outline: .regular, size: 20)
    static let pRegular18 = FontStyle(family: .proxima, outline: .regular, size: 18)
    static let pRegular16 = FontStyle(family: .proxima, outline: .regular, size: 16)
    static let pRegular12 = FontStyle(family: .proxima, outline: .regular, size: 12)
    static let pRegular11 = FontStyle(family: .proxima, outline: .regular, size: 11)

    static let jSemiBold26 = FontStyle(family: .jakarta, outline: .semiBold, size: 26)
    static let jSemiBold24 = FontStyle(family: .jakarta, outline: .semiBold, size: 24)
    static let jMedium14 = FontStyle(family: .jakarta, outline: .medium, size: 14)
    static let jLight12 = FontStyle(family: .jakarta, outline: .light, size: 12)
}

extension FontStyle {
    enum Family {
        case proxima, jakarta

        func title(outline: Outline) -> String {
            switch self {
            case .proxima: "ProximaNova-\(outline.rawValue)"
            case .jakarta: "PlusJakartaSans-\(outline.rawValue)"
            }
        }
    }

    enum Outline: String {
        case light =    "Light"
        case semiBold = "Semibold"
        case bold =     "Bold"
        case regular =  "Regular"
        case medium =   "Medium"
    }
}
