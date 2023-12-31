//
//  Element+Draggable.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase
public extension Element {
    /// The `draggable` global attribute is an enumerated attribute that indicates whether the element can be dragged, either with native browser behavior or the HTML Drag and Drop API.
    ///
    /// The `draggable` attribute may be applied to elements that strictly fall under the HTML namespace, which means that it cannot be applied to SVGs. For more information about what namespace declarations look like, and what they do, see Namespace crash course.
    ///
    /// Default is `auto`
    ///
    /// For more information, see [draggable docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/draggable)
    @discardableResult
    func draggable(_ value: Draggable? = .auto, _ condition: Bool = true) -> Self {
        attribute("draggable", value?.rawValue, condition)
    }
}

public enum Draggable: String {
    /// Specifies that the element is draggable
    case `true`
    /// Specifies that the element is not draggable
    case `false`
    /// Uses the default behavior of the browser
    case auto
}
