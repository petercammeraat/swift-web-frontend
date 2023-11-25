//
//  Element+Style.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public extension Element {
    /// Find an existing style attribute and return the value as an array of strings or an empty array
    private var styleArray: [String] {
        attributes?.first { $0.key == "style" }?.value?.styleArray ?? []
    }

    /// Specifies one stylename for an element (refers to a style in a style sheet)
    @discardableResult
    func style(_ value: String?, _ condition: Bool = true) -> Self {
        guard let value, !value.isEmpty else { return self }
        return attribute("style", value, condition)
    }

    /// Specifies multiple stylenames for an element (refers to a style in a style sheet)
    @discardableResult
    func style(_ values: [String], _ condition: Bool = true) -> Self {
        /// @NOTE: explicit true flag is needed, otherwise Swift won't know which function to call...
        style(values.styleString, condition)
    }

    /// Specifies multiple stylenames for an element (refers to a style in a style sheet)
    @discardableResult
    func style(_ values: String...) -> Self {
        style(values)
    }

    /// Adds a single value to the style list if the condition is true
    ///
    /// Note: If the value is empty or nil it won't be added to the list
    ///
    @discardableResult
    func style(add value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return style(add: [value], condition)
    }

    /// Adds an array of values to the style list if the condition is true
    ///
    /// Note: If the value is empty it won't be added to the list
    ///
    @discardableResult
    func style(add values: [String], _ condition: Bool = true) -> Self {
        let newValues = styleArray + values.filter { !$0.isEmpty }

        var newValue: String? = nil
        if !newValues.isEmpty {
            newValue = newValues.styleString
        }
        return style(newValue, condition)
    }

    /// Removes a given style values if the condition is true
    @discardableResult
    func style(remove value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return style(remove: [value], condition)
    }

    /// Removes an array of style values if the condition is true
    @discardableResult
    func style(remove values: [String], _ condition: Bool = true) -> Self {
        let newClasses = styleArray.filter { !values.contains($0) }
        if newClasses.isEmpty {
            return deleteAttribute("style", condition)
        }
        return style(newClasses, condition)
    }

    /// Removes a given style value with its key name if the condition is true
    /// `.style(removeByKey: "font-size")` as opposed to `.style(remove: "font-size: 12rem")`
    @discardableResult
    func style(removeByKey value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return style(removeByKey: [value], condition)
    }


    /// Removes an array of style values with the key name if the condition is true
    /// `.style(removeByKey:[ "font-size"])` as opposed to `.style(remove: ["font-size: 12rem"])`
    @discardableResult
    func style(removeByKey values: [String], _ condition: Bool = true) -> Self {
        let newClasses = styleArray.filter { !values.contains(String($0.prefix(while: {$0 != ":"}))) }
        if newClasses.isEmpty {
            return deleteAttribute("style", condition)
        }
        return style(newClasses, condition)
    }

    /// toggles a single style value
    @discardableResult
    func style(toggle value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        if styleArray.contains(value) {
            return style(remove: value, condition)
        }
        return style(add: value, condition)
    }
}

private extension Array where Element == String {
    var styleString: String {
        filter { !$0.isEmpty }.joined(separator: ";")
    }
}

private extension String {
    /// turns a list of style values (separated by a semicolon) into an array of strings
    var styleArray: [String] {
        split(separator: ";").map { String($0) }
    }
}
