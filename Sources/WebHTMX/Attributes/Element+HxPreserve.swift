//
//  Element+HxPreserve.swift
//  WebHTMX
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// The hx-preserve attribute allows you to keep an element unchanged during HTML replacement.
    ///
    /// Elements with hx-preserve set are preserved by id when htmx updates any ancestor element. You must set an unchanging id on elements for hx-preserve to work. The response requires an element with the same id, but its type and other attributes are ignored.
    ///
    /// Note that some elements cannot unfortunately be preserved properly, such as `<input type="text">` (focus and caret position are lost), iframes or certain types of videos. To tackle some of these cases we recommend the morphdom extension, which does a more elaborate DOM reconciliation.
    ///
    /// For more information, see [hx-preserve docs](https://htmx.org/attributes/hx-preserve/)
    @discardableResult
    func hxPreserve(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-preserve", value, condition)
    }
}
