//
//  Element+HxTarget.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase

public extension Element {
    /// The `hx-target` attribute allows you to target a different element for swapping than the one issuing the AJAX request.
    ///
    /// For more information, see [hx-target docs](https://htmx.org/attributes/hx-target/)
    @discardableResult
    func hxTarget(target: HtmxTarget?, _ condition: Bool = true) -> Self {
        attribute("hx-target", target?.value, condition)
    }
}

public enum HtmxTarget {
    /// Which indicates that the element that the hx-target attribute is on is the target
    case this
    /// Which resolves to element.nextElementSibling
    case next
    /// Which resolves to element.previousElementSibling
    case previous
    /// Which  will find the closest ancestor element or itself, that matches the given CSS selector (e.g. closest tr will target the closest table row to the element).
    case closest(String)
    /// Which will find the first child descendant element that matches the given CSS selector.
    case find(String)
    /// Which will scan the DOM forward for the first element that matches the given CSS selector. (e.g. next .error will target the closest following sibling element with error class)
    case nextFromSelector(String)
    /// Which will scan the DOM backwards for the first element that matches the given CSS selector. (e.g previous .error will target the closest previous sibling with error class)
    case previousFromSelector(String)

    var value: String {
        switch self {
        case .this:
            "this"
        case .next:
            "next"
        case .previous:
            "previous"
        case .closest(let selector):
            "closest \(selector)"
        case .find(let selector):
            "find \(selector)"
        case .nextFromSelector(let selector):
            "next \(selector)"
        case .previousFromSelector(let selector):
            "previous \(selector)"
        }
    }
}
