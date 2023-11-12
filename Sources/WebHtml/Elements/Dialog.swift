//
//  Dialog.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<dialog>` HTML element represents a modal or non-modal dialog box or other interactive component, such as a dismissible alert, inspector, or subwindow.
///
/// The HTML `<dialog>` element is used to create both modal and non-modal dialog boxes. Modal dialog boxes interrupt interaction with the rest of the page being inert, while non-modal dialog boxes allow interaction with the rest of the page.
///
/// For more information, see [dialog docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dialog)
open class Dialog: StandardElement {
    override open class var name: String { .init(describing: Dialog.self).lowercased() }
}

public extension Dialog {
    /// Specifies that the dialog element is active and that the user can interact with it
    func open(_ condition: Bool = true) -> Self {
        flagAttribute("open", nil, condition)
    }
}
