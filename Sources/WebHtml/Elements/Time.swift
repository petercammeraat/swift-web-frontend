//
//  Time.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<time>` HTML element represents a specific period in time.
///
/// It may include the datetime attribute to translate dates into machine-readable format, allowing for better search engine results or custom features such as reminders.
///
/// It may represent one of the following:
/// - A time on a 24-hour clock.
/// - A precise date in the Gregorian calendar (with optional time and timezone information).
/// - A valid time duration.
///
/// For more information, see [time docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time)
open class Time: StandardElement {
    override open class var name: String { .init(describing: Time.self).lowercased() }
}

public extension Time {
    /// Represent a machine-readable format of the `<time>` element
    ///
    /// `YYYY-MM-DDThh:mm:ssTZD`
    /// or
    /// `PTDHMS`    The date or time being specified. Explanation of components:
    ///
    /// - YYYY - year (e.g. 2011)
    /// - MM - month (e.g. 01 for January)
    /// - DD - day of the month (e.g. 08)
    /// - T or a space - a separator (required if time is also specified)
    /// - hh - hour (e.g. 22 for 10.00pm)
    /// - mm - minutes (e.g. 55)
    /// - ss - seconds (e.g. 03)
    /// - TZD - Time Zone Designator (Z denotes Zulu, also known as Greenwich Mean Time)
    /// - P - a prefix for "Period"
    /// - D - a prefix for "Days"
    /// - H - a prefix for "Hours"
    /// - M - a prefix for "Minutes"
    /// - S - a prefix for "Seconds"
    func datetime(_ value: String) -> Self {
        attribute("datetime", value)
    }
}
