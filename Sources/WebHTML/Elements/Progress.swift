//
//  Progress.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<progress>` HTML element displays an indicator showing the completion progress of a task, typically displayed as a progress bar.
///
/// For more information, see [progress docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress)
open class Progress: StandardElement {
    override open class var name: String { .init(describing: Progress.self).lowercased() }
}

public extension Progress {
    /// Specifies how much work the task requires in total. Default value is 1
    func max(_ value: String) -> Self {
        attribute("max", value)
    }
    
    /// Specifies how much of the task has been completed
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
