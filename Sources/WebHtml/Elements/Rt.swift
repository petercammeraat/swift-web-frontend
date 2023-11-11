//
//  Rt.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<rt>` HTML element specifies the ruby text component of a ruby annotation, which is used to provide pronunciation, translation, or transliteration information for East Asian typography.
///
/// The `<rt>` element must always be contained within a `<ruby>` element.
///
/// For more information, see [rt docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/rt)
open class Rt: StandardElement {
    override open class var name: String { .init(describing: Rt.self).lowercased() }
}
