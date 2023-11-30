//
//  Col.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<col>` HTML element defines a column within a table and is used for defining common semantics on all common cells. It is generally found within a `<colgroup>` element.
///
/// For more information, see [col docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/col)
open class Col: EmptyElement {
    override open class var name: String { .init(describing: Col.self).lowercased() }
}

public extension Col {
    /// Sets the number of columns a `<col>` element should span
    func span(_ value: Int) -> Self {
        attribute("span", String(value))
    }
}
