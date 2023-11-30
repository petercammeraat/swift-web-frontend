//
//  Strong.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<strong>` HTML element indicates that its contents have strong importance, seriousness, or urgency.
///
/// Browsers typically render the contents in bold type.
/// 
/// For more information, see [strong docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong)
open class Strong: StandardElement {
    override open class var name: String { .init(describing: Strong.self).lowercased() }
}
