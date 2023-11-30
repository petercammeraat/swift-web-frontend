//
//  Element+HxSwap.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The `hx-swap` attribute allows you to specify how the response will be swapped in relative to the target of an AJAX request.
    ///
    /// For more information, see [hx-swap docs](https://htmx.org/attributes/hx-swap/)
    @discardableResult
    func hxSwap(swap: HtmxSwap?, _ condition: Bool = true) -> Self {
        attribute("hx-swap", swap?.rawValue, condition)
    }
}

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
