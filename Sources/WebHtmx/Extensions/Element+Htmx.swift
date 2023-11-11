//
//  Element+Htmx.swift
//  WebHtmx
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

// MARK: - Core Attributes
public extension Element {
    /// The `hx-boost` attribute allows you to “boost” normal anchors and form tags to use AJAX instead.
    ///
    /// This has the nice fallback that, if the user does not have javascript enabled, the site will continue to work.
    ///
    /// For more information, see [hx-boost docs](https://htmx.org/attributes/hx-boost/)
    @discardableResult 
    func hxBoost(_ value: Bool?, _ condition: Bool = true) -> Self {
        attribute("hx-boost", value != nil ? String(value!) : nil, condition)
    }

    /// The `hx-get` attribute will cause an element to issue a GET to the specified URL and swap the HTML into the DOM using a swap strategy:
    ///
    /// For more information, see [hx-get docs](https://htmx.org/attributes/hx-get/)
    @discardableResult
    func hxGet(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-get", value, condition)
    }

    /// The `hx-post` attribute will cause an element to issue a POST to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-post docs](https://htmx.org/attributes/hx-post/)
    @discardableResult
    func hxPost(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-post", value, condition)
    }

    /// The `hx-on` attribute allows you to embed scripts inline to respond to events directly on an element; similar to the onevent properties found in HTML, such as onClick.
    ///
    /// For more information, see [hx-on docs](https://htmx.org/attributes/hx-on/)
    @discardableResult
    func hxOn(event: String, _ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-on:" + event, value, condition)
    }

    /// The `hx-push-url` attribute allows you to push a URL into the browser location history.
    ///
    /// This creates a new history entry, allowing navigation with the browser’s back and forward buttons. htmx snapshots the current DOM and saves it into its history cache, and restores from this cache on navigation.
    ///
    /// For more information, see [hx-push-url docs](https://htmx.org/attributes/hx-push-url/)
    @discardableResult
    func hxPushUrl(pushUrl: HtmxPushUrl?, _ condition: Bool = true) -> Self {
        attribute("hx-push-url", pushUrl?.value, condition)
    }

    /// The `hx-select` attribute allows you to select the content you want swapped from a response. 
    ///
    /// The value of this attribute is a CSS query selector of the element or elements to select from the response.
    ///
    /// For more information, see [hx-select docs](https://htmx.org/attributes/hx-select/)
    @discardableResult
    func hxSelect(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-select", value, condition)
    }

    /// The `hx-select-oob` attribute allows you to select content from a response to be swapped in via an out-of-band swap.
    ///
    /// The value of this attribute is comma separated list of elements to be swapped out of band. This attribute is almost always paired with `hx-select`.
    ///
    /// For more information, see [hx-select-oob docs](https://htmx.org/attributes/hx-select-oob/)
    @discardableResult
    func hxSelectOob(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-select-oob", value, condition)
    }

    /// The `hx-swap` attribute allows you to specify how the response will be swapped in relative to the target of an AJAX request.
    ///
    /// For more information, see [hx-swap docs](https://htmx.org/attributes/hx-swap/)
    @discardableResult
    func hxSwap(swap: HtmxSwap?, _ condition: Bool = true) -> Self {
        attribute("hx-swap", swap?.rawValue, condition)
    }

    /// The `hx-target` attribute allows you to target a different element for swapping than the one issuing the AJAX request.
    ///
    /// For more information, see [hx-target docs](https://htmx.org/attributes/hx-target/)
    @discardableResult
    func hxTarget(target: HtmxTarget?, _ condition: Bool = true) -> Self {
        attribute("hx-target", target?.value, condition)
    }

    // TODO: this could be an enum, maybe?
    /// The `hx-trigger` attribute allows you to specify what triggers an AJAX request.
    ///
    /// For more information, see [hx-trigger docs](https://htmx.org/attributes/hx-trigger/)
    @discardableResult
    func hxTrigger(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-trigger", value, condition)
    }

    /// The `hx-vals` attribute allows you to add to the parameters that will be submitted with an AJAX request.
    ///
    /// For more information, see [hx-vals docs](https://htmx.org/attributes/hx-vals/)
    @discardableResult
    func hxVals(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-vals", value, condition)
    }
}

// MARK: - Additional Attributes
public extension Element {
    /// The `hx-confirm` attribute allows you to confirm an action before issuing a request.
    ///
    /// This can be useful in cases where the action is destructive and you want to ensure that the user really wants to do it.
    ///
    /// For more information, see [hx-confirm docs](https://htmx.org/attributes/hx-confirm/)
    @discardableResult
    func hxConfirm(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-confirm", value, condition)
    }

    /// The `hx-delete` attribute will cause an element to issue a DELETE to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-delete docs](https://htmx.org/attributes/hx-delete/)
    @discardableResult
    func hxDelete(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-delete", value, condition)
    }

    /// The `hx-disable` attribute will disable htmx processing for a given element and all its children.
    ///
    /// This can be useful as a backup for HTML escaping, when you include user generated content in your site, and you want to prevent malicious scripting attacks. The value of the tag is ignored, and it cannot be reversed by any content beneath it.
    ///
    /// For more information, see [hx-disable docs](https://htmx.org/attributes/hx-disable/)
    @discardableResult
    func hxDisable(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-disable", value, condition)
    }

    /// The `hx-disabled-elt` attribute allows you to specify elements that will have the disabled attribute added to them for the duration of the request.
    ///
    /// The value of this attribute is a CSS query selector of the element or elements to apply the class to, or the keyword closest, followed by a CSS selector, which will find the closest ancestor element or itself, that matches the given CSS selector (e.g. closest tr), or the keyword `this`.
    ///
    /// For more information, see [hx-disable-elt docs](https://htmx.org/attributes/hx-disable-elt/)
    @discardableResult
    func hxDisableElt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-disable-elt", value, condition)
    }

    /// The default behavior for htmx is to “inherit” many attributes automatically: that is, an attribute such as `hx-target` may be placed on a parent element, and all child elements will inherit that target.
    ///
    /// The `hx-disinherit` attribute allows you to control this automatic attribute inheritance. An example scenario is to allow you to place an `hx-boost` on the body element of a page, but overriding that behavior in a specific part of the page to allow for more specific behaviors.
    ///
    /// For more information, see [hx-disinherit docs](https://htmx.org/attributes/hx-disinherit/)
    @discardableResult
    func hxDisinherit(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-disinherit", value, condition)
    }

    /// The `hx-encoding` attribute allows you to switch the request encoding from the usual `application/x-www-form-urlencoded` encoding to `multipart/form-data`, usually to support file uploads in an ajax request.
    ///
    /// The value of this attribute should be `multipart/form-data`.
    ///
    /// For more information, see [hx-encoding docs](https://htmx.org/attributes/hx-encoding/)
    @discardableResult
    func hxEncoding(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-encoding", value, condition)
    }

    /// The hx-ext attribute enables an htmx extension for an element and all its children.
    ///
    /// The value can be a single extension name or a comma separated list of extensions to apply.
    ///
    /// The hx-ext tag may be placed on parent elements if you want a plugin to apply to an entire swath of the DOM, and on the body tag for it to apply to all htmx requests.
    ///
    /// For more information, see [hx-ext docs](https://htmx.org/attributes/hx-ext/)
    @discardableResult
    func hxExt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-ext", value, condition)
    }

    /// The `hx-headers` attribute allows you to add to the headers that will be submitted with an AJAX request.
    ///
    /// For more information, see [hx-headers docs](https://htmx.org/attributes/hx-headers/)
    @discardableResult
    func hxHeaders(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-headers", value, condition)
    }

    /// Set the `hx-history` attribute to false on any element in the current document, or any html fragment loaded into the current document by htmx, to prevent sensitive data being saved to the localStorage cache when htmx takes a snapshot of the page state.
    ///
    /// For more information, see [hx-history docs](https://htmx.org/attributes/hx-history/)
    @discardableResult
    func hxHistory(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-history", value, condition)
    }

    /// The hx-history-elt attribute allows you to specify the element that will be used to snapshot and restore page state during navigation. 
    ///
    /// By default, the body tag is used. This is typically good enough for most setups, but you may want to narrow it down to a child element. Just make sure that the element is always visible in your application, or htmx will not be able to restore history navigation properly.
    ///
    /// For more information, see [hx-history-elt docs](https://htmx.org/attributes/hx-history-elt/)
    @discardableResult
    func hxHistoryElt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-history-elt", value, condition)
    }

    // TODO: use enum
    /// The `hx-include` attribute allows you to include additional element values in an AJAX request.
    ///
    /// For more information, see [hx-include docs](https://htmx.org/attributes/hx-include/)
    @discardableResult
    func hxInclude(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-include", value, condition)
    }

    /// The `hx-indicator` attribute allows you to specify the element that will have the htmx-request class added to it for the duration of the request. This can be used to show spinners or progress indicators while the request is in flight.
    ///
    /// For more information, see [hx-include docs](https://htmx.org/attributes/hx-include/)
    @discardableResult
    func hxIndicator(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-indicator", value, condition)
    }

    // TODO: use num
    /// The `hx-params` attribute allows you to filter the parameters that will be submitted with an AJAX request.
    ///
    /// For more information, see [hx-params docs](https://htmx.org/attributes/hx-params/)
    @discardableResult
    func hxParams(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-params", value, condition)
    }

    /// The `hx-patch` attribute will cause an element to issue a PATCH to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-patch docs](https://htmx.org/attributes/hx-patch/)
    @discardableResult
    func hxPatch(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-patch", value, condition)
    }

    /// The hx-preserve attribute allows you to keep an element unchanged during HTML replacement.
    ///
    /// Elements with hx-preserve set are preserved by id when htmx updates any ancestor element. You must set an unchanging id on elements for hx-preserve to work. The response requires an element with the same id, but its type and other attributes are ignored. 
    ///
    /// Note that some elements cannot unfortunately be preserved properly, such as `<input type="text">` (focus and caret position are lost), iframes or certain types of videos. To tackle some of these cases we recommend the morphdom extension, which does a more elaborate DOM reconciliation.
    ///
    /// For more information, see [hx-preserve docs](https://htmx.org/attributes/hx-preserve/)
    @discardableResult
    func hxPreserve(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-preserve", value, condition)
    }

    /// The `hx-prompt` attribute allows you to show a prompt before issuing a request. The value of the prompt will be included in the request in the HX-Prompt header.
    ///
    /// For more information, see [hx-prompt docs](https://htmx.org/attributes/hx-prompt/)
    @discardableResult
    func hxPrompt(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-prompt", value, condition)
    }

    /// The `hx-put` attribute will cause an element to issue a PUT to the specified URL and swap the HTML into the DOM using a swap strategy.
    ///
    /// For more information, see [hx-put docs](https://htmx.org/attributes/hx-put/)
    @discardableResult
    func hxPut(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-put", value, condition)
    }

    /// The `hx-replace-url` attribute allows you to replace the current url of the browser location history.
    ///
    /// For more information, see [hx-replace-url docs](https://htmx.org/attributes/hx-replace-url/)
    @discardableResult
    func hxReplaceUrl(replaceUrl: HtmxReplaceUrl?, _ condition: Bool = true) -> Self {
        attribute("hx-replace-url", replaceUrl?.value, condition)
    }

    // TODO: use enum
    /// The `hx-request` attribute allows you to configure various aspects of the request via the following attributes.
    ///
    /// For more information, see [hx-request docs](https://htmx.org/attributes/hx-request/)
    @discardableResult
    func hxRequest(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-request", value, condition)
    }

    /// The `hx-sync` attribute allows you to synchronize AJAX requests between multiple elements.
    ///
    /// The `hx-sync` attribute consists of a CSS selector to indicate the element to synchronize on, followed optionally by a colon and then by an optional syncing strategy.
    ///
    /// For more information, see [hx-sync docs](https://htmx.org/attributes/hx-sync/)
    @discardableResult
    func hxSync(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-sync", value, condition)
    }

    /// The hx-validate attribute will cause an element to validate itself by way of the HTML5 Validation API before it submits a request.
    ///
    /// Form elements do this by default, but other elements do not.
    ///
    /// For more information, see [hx-validate docs](https://htmx.org/attributes/hx-validate/)
    @discardableResult
    func hxValidate(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("hx-validate", value, condition)
    }
}
