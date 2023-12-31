//
//  Abbr.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<address>` HTML element indicates that the enclosed HTML provides contact information for a person or people, or for an organization.
///
/// For more information, see [address docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/address)
open class Address: StandardElement {
    override open class var name: String { .init(describing: Address.self).lowercased() }
}
