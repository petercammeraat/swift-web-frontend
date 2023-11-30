//
//  Meter.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<meter>` HTML element represents either a scalar value within a known range or a fractional value.
///
/// For more information, see [meter docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter)
open class Meter: StandardElement {
    override open class var name: String { .init(describing: Meter.self).lowercased() }
    
    public init(value: Int, _ contents: String) {
        super.init()
        setContents(contents)
        setAttributes([
            .init(key: "value", value: String(value))
        ])
    }
}

public extension Meter {
    /// Specifies which form the <meter> element belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the range that is considered to be a high value
    func high(_ value: Int) -> Self {
        attribute("high", String(value))
    
    }
    
    /// Specifies the range that is considered to be a low value
    func low(_ value: Int) -> Self {
        attribute("low", String(value))
    
    }
    
    /// Specifies the maximum value of the range
    func max(_ value: Int) -> Self {
        attribute("max", String(value))
    
    }
    
    /// Specifies the minimum value of the range. Default value is 0
    func min(_ value: Int = 0) -> Self {
        attribute("min", String(value))
    }
    
    /// Specifies what value is the optimal value for the gauge
    func optimum(_ value: Int) -> Self {
        attribute("optimum", String(value))
    }
    
    /// Required. Specifies the current value of the gauge
    func value(_ value: Int) -> Self {
        attribute("value", String(value))
    }
}
