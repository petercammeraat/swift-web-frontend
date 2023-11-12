//
//  HtmxReplaceUrl.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public enum HtmxReplaceUrl {
    /// Replaces the fetched URL in the browser navigation bar.
    case `true`
    /// Disables replacing the fetched URL if it would otherwise be replaced due to inheritance.
    case `false`
    /// A URL to be replaced into the location bar. This may be relative or absolute, as per `history.replaceState()`.
    case url(String)

    var value: String {
        switch self {
        case .true:
            "true"
        case .false:
            "false"
        case .url(let string):
            string
        }
    }
}
