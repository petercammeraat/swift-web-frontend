//
//  Th.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<th>` HTML element defines a cell as the header of a group of table cells. The exact nature of this group is defined by the scope and headers attributes.
///
/// For more information, see [th docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th)
open class Th: StandardElement {
    override open class var name: String { .init(describing: Th.self).lowercased() }
}

public extension Th {
    enum Scope: String {
        /// Specifies that the cell is a header for a column
        case col
        /// Specifies that the cell is a header for a row
        case row
        /// Specifies that the cell is a header for a group of columns
        case colgroup
        /// Specifies that the cell is a header for a group of rows
        case rowgroup
    }
    
    /// Specifies an abbreviated version of the content in a header cell
    func abbr(_ value: String) -> Self {
        attribute("abbr", value)
    }
    
    /// Specifies the number of columns a header cell should span
    func colspan(_ value: Int) -> Self {
        attribute("colspan", String(value))
    }
    
    /// Specifies one or more header cells a cell is related to
    func headers(_ value: String) -> Self {
        attribute("headers", value)
    }
    
    /// Specifies the number of rows a header cell should span
    func rowspan(_ value: Int) -> Self {
        attribute("rowspan", String(value))
    }
    
    /// Specifies one or more header cells a cell is related to
    func scope(_ value: Scope) -> Self {
        attribute("scope", value.rawValue)
    }
}
