//
//  MediaQuery.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

/// Represents a CSS media query
public struct MediaQuery {
    /// Device orientation
    public enum Orientation: String {
        /// Portrait orientation
        case portrait
        /// Landscape orientation
        case landscape
    }

    /// Device color scheme
    public enum ColorScheme: String {
        /// Light mode
        case light
        /// Dark mode
        case dark
    }

    /// Raw representation of the media query
    var value: String
}

public extension MediaQuery {
    /// Screen
    static let screen = MediaQuery(value: "screen")

    /// Device width in pixels
    static func deviceWidth(px: Int) -> MediaQuery {
        .init(value: "(device-width: \(px)px)")
    }

    /// Device height in pixels
    static func deviceHeight(px: Int) -> MediaQuery {
        .init(value: "(device-height: \(px)px)")
    }

    /// Device pixel ratio with webkit prefix
    static func webkitDevicePixelRatio(_ value: Int) -> MediaQuery {
        .init(value: "(-webkit-device-pixel-ratio: \(value))")
    }

    /// Device orientation
    static func orientation(_ value: Orientation) -> MediaQuery {
        .init(value: "(orientation: \(value.rawValue))")
    }

    /// Preferred color scheme
    static func prefersColorScheme(_ value: ColorScheme) -> MediaQuery {
        .init(value: "(prefers-color-scheme: \(value.rawValue))")
    }
}
