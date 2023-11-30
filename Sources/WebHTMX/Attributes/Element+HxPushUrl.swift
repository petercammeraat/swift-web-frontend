//
//  Element+HxPushUrl.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `hx-push-url` attribute allows you to push a URL into the browser location history.
    ///
    /// This creates a new history entry, allowing navigation with the browser’s back and forward buttons. htmx snapshots the current DOM and saves it into its history cache, and restores from this cache on navigation.
    ///
    /// For more information, see [hx-push-url docs](https://htmx.org/attributes/hx-push-url/)
    @discardableResult
    func hxPushUrl(pushUrl: HtmxPushUrl?, _ condition: Bool = true) -> Self {
        attribute("hx-push-url", pushUrl?.value, condition)
    }
}

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
