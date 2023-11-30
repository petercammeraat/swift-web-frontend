//
//  Summary.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<summary>` HTML element specifies a summary, caption, or legend for a `<details>` element's disclosure box.
///
/// Clicking the `<summary>` element toggles the state of the parent `<details>` element open and closed.
///
/// For more information, see [summary docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/summary)
open class Summary: StandardElement {
    override open class var name: String { .init(describing: Summary.self).lowercased() }
}
