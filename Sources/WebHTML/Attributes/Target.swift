//
//  Target.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase/// Where to display the linked URL, as the name for a browsing context (a tab, window, or `<iframe>`).
///
/// For more information, see [a docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#target)
public enum Target: String {
    /// Opens the link in a new window or tab
    case blank = "_blank"
    /// Default. Opens the link in the same frame as it was clicked
    case `default` = "_self"
    /// Opens the link in the parent frame
    case parent = "_parent"
    /// Opens the link in the full body of the window
    case top = "_top"
}

public enum TargetFrame {
    /// Opens the linked document in a new window or tab
    case blank
    /// Opens the linked document in the same frame as it was clicked (this is default)
    case `default`
    /// Opens the linked document in the parent frame
    case parent
    /// Opens the linked document in the full body of the window
    case top
    /// Opens the linked document in the named iframe
    case frame(String)

    public var rawValue: String {
        switch self {
        case .blank:
            return "_blank"
        case .`default`:
            return "_self"
        case .parent:
            return "_parent"
        case .top:
            return "_top"
        case let .frame(name):
            return name
        }
    }
}
