//
//  Slot.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<slot>` HTML element—part of the Web Components technology suite—is a placeholder inside a web component that you can fill with your own markup, which lets you create separate DOM trees and present them together.
///
/// For more information, see [slot docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/slot)
open class Slot: StandardElement {
    override open class var name: String { .init(describing: Slot.self).lowercased() }
}
