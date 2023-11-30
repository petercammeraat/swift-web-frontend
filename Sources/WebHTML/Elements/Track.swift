//
//  Track.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<track>` HTML element is used as a child of the media elements, `<audio>` and `<video>`.
///
/// It lets you specify timed text tracks (or time-based data), for example to automatically handle subtitles. The tracks are formatted in WebVTT format (.vtt files) — Web Video Text Tracks.
///
/// For more information, see [track docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track)
open class Track: EmptyElement {
    override open class var name: String { .init(describing: Track.self).lowercased() }
    
    public init(src: String) {
        super.init()
        setAttributes([
            .init(key: "src", value: src)
        ])
    }
}

public extension Track {
    enum Kind: String {
        /// The track defines translation of dialogue and sound effects (suitable for deaf users)
        case captions
        /// The track defines chapter titles (suitable for navigating the media resource)
        case chapters
        /// The track defines a textual description of the video content (suitable for blind users)
        case descriptions
        /// The track defines content used by scripts. Not visible for the user
        case metadata
        /// The track defines subtitles, used to display subtitles in a video
        case subtitles
    }
    
    /// Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
    func `default`(_ condition: Bool = true) -> Self {
        flagAttribute("default", nil, condition)
    }
    
    /// Specifies the kind of text track
    func kind(_ value: Kind) -> Self {
        attribute("kind", value.rawValue)
    }
    
    /// Specifies the title of the text track
    func label(_ value: String) -> Self {
        attribute("label", value)
    }
    
    /// Required. Specifies the URL of the track file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the language of the track text data (required if kind="subtitles")
    func srclang(_ value: String) -> Self {
        attribute("srclang", value)
    }
}
