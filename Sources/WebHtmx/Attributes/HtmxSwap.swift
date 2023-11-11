//
//  HtmxSwap.swift
//  WebHtmx
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

public enum HtmxSwap: String {
    /// Does not append content from response (out of band items will still be processed).
    case none
    /// Replace the inner html of the target element
    case innerHTML
    /// Replace the entire target element with the response
    case outerHTML
    /// Insert the response before the target element
    case beforeBegin = "beforebegin"
    /// Insert the response before the first child of the target element
    case afterBegin = "afterbegin"
    /// Insert the response after the last child of the target element
    case beforeEnd = "beforeend"
    /// Insert the response after the target element
    case afterEnd = "afterend"
    /// Deletes the target element regardless of the response
    case delete
}
