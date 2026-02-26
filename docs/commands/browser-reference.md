# Browser Platform Commands

Use with `PLATFORM=browser`. Web automation via Playwright.

| Command | Tool(s) |
|---------|---------|
| /browse | navigation_go-to |
| /screenshot | content_take-screenshot |
| /click, /fill, /hover | interaction_click, interaction_fill, interaction_hover |
| /select, /drag, /scroll | interaction_select, interaction_drag, interaction_scroll |
| /keypress | interaction_press-key |
| /html, /text, /pdf | content_get-as-html, content_get-as-text, content_save-as-pdf |
| /accessibility | a11y_take-aria-snapshot, a11y_take-ax-tree-snapshot |
| /console, /network, /webvitals | o11y_get-console-messages, o11y_get-http-requests, o11y_get-web-vitals |
| /trace | o11y_set-trace-id, o11y_get-trace-id, o11y_new-trace-id |
| /run-js, /sandbox | run_js-in-browser, run_js-in-sandbox |
| /intercept, /mock | stub_intercept-http-request, stub_mock-http-response |
| /reload, /back, /forward | navigation_reload, navigation_go-back-or-forward |
| /resize | interaction_resize-viewport, interaction_resize-window |
| /figma | figma_compare-page-with-design |
| /react | react_get-component-for-element, react_get-element-for-component |
| /wait | sync_wait-for-network-idle |
| /otel | o11y_get-trace-id, o11y_get-console-messages, run_js-in-browser |
