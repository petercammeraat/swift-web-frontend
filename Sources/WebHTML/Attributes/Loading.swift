//
//  Loading.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase/// The loading property of the HTMLIFrameElement interface is a string that provides a hint to the user agent indicating whether the iframe should be loaded immediately on page load, or only when it is needed.
///
/// For more information, see [loading docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/loading)
public enum Loading: String {
    /// Load the iframe as soon as the element is processed.
    case eager
    /// Load the iframe when the browser believes that it is likely to be need in the near future.
    case lazy
}
