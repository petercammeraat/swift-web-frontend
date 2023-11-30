//
//  Element+Class.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// Find an existing class attribute and return the value as an array of strings or an empty array
    private var classArray: [String] {
        attributes?.first { $0.key == "class" }?.value?.classArray ?? []
    }

    /// Specifies one classname for an element (refers to a class in a style sheet)
    @discardableResult
    func `class`(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("class", value, condition)
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    @discardableResult
    func `class`(_ values: [String], _ condition: Bool = true) -> Self {
        /// @NOTE: explicit true flag is needed, otherwise Swift won't know which function to call...
        `class`(values.classString, condition)
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    @discardableResult
    func `class`(_ values: String...) -> Self {
        `class`(values)
    }

    /// Adds a single value to the class list if the condition is true
    ///
    /// Note: If the value is empty or nil it won't be added to the list
    ///
    @discardableResult
    func `class`(add value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return `class`(add: [value], condition)
    }

    /// Adds an array of values to the class list if the condition is true
    ///
    /// Note: If the value is empty it won't be added to the list
    ///
    @discardableResult
    func `class`(add values: [String], _ condition: Bool = true) -> Self {
        let newValues = classArray + values.filter { !$0.isEmpty }

        var newValue: String? = nil
        if !newValues.isEmpty {
            newValue = newValues.classString
        }
        return `class`(newValue, condition)
    }

    /// Removes a given class values if the condition is true
    @discardableResult
    func `class`(remove value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return `class`(remove: [value], condition)
    }

    /// Removes an array of class values if the condition is true
    @discardableResult
    func `class`(remove values: [String], _ condition: Bool = true) -> Self {
        let newClasses = classArray.filter { !values.contains($0) }
        if newClasses.isEmpty {
            return deleteAttribute("class", condition)
        }
        return `class`(newClasses, condition)
    }

    /// toggles a single class value
    @discardableResult
    func `class`(toggle value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        if classArray.contains(value) {
            return `class`(remove: value, condition)
        }
        return `class`(add: value, condition)
    }
}

private extension Array where Element == String {
    var classString: String {
        filter { !$0.isEmpty }.joined(separator: " ")
    }
}

private extension String {
    /// turns a list of class values (separated by a space" into an array of strings
    var classArray: [String] {
        split(separator: " ").map { String($0) }
    }
}
