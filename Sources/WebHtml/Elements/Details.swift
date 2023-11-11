//
//  Details.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<details>` HTML element creates a disclosure widget in which information is visible only when the widget is toggled into an "open" state. A summary or label must be provided using the `<summary>` element.
///
/// For more information, see [details docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details)
open class Details: StandardElement {
    override open class var name: String { .init(describing: Details.self).lowercased() }
}

public extension Details {
    /// Specifies that the details should be visible (open) to the user
    func open(_ condition: Bool = true) -> Self {
        flagAttribute("open", nil, condition)
    }
}
