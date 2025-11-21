import SwiftUI

public struct AppThemeKey: EnvironmentKey {
    static public var defaultValue: ColorStyles = .orange
}

public extension EnvironmentValues {
    var appPalete: ColorStyles {
        get { self[AppThemeKey.self ] }
        set { self[AppThemeKey.self] = newValue }
    }
}

public struct ApplyTheme: ViewModifier {
    @Environment(\.colorScheme) private var scheme

    public func body(content: Content) -> some View {
        content.environment(\.appPalete, ColorStyles.palette(scheme))
    }
}

public extension View {
    func appTheme() -> some View {
        modifier(ApplyTheme())
    }
}
