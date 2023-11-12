//
//  HtmxPushUrl.swift
//  WebHtmx
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public enum HtmxPushUrl {
    /// Pushes the fetched URL into history.
    case `true`
    /// Disables pushing the fetched URL if it would otherwise be pushed due to inheritance or `hx-boost`
    case `false`
    /// A URL to be pushed into the location bar. This may be relative or absolute, as per `history.pushState()`.
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
