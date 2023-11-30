//
//  Datalist.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<datalist>` HTML element contains a set of `<option>` elements that represent the permissible or recommended options available to choose from within other controls.
///
/// For more information, see [datalist docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/datalist)
open class Datalist: StandardElement {
    override open class var name: String { .init(describing: Datalist.self).lowercased() }
}
