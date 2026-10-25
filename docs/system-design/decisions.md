# Architectural Decision Records (ADRs): Forkify

| ADR ID | Decision Title | Chosen Option | Alternatives Considered | Deciding Factors | Trade-Off Accepted | Revisit Trigger |
|---|---|---|---|---|---|---|
| **ADR-01** | Architecture Model | Vanilla JS MVC | React, Vue, Angular | Master web fundamentals; zero framework dependency | Manual DOM diffing maintenance | Team scales past 10 engineers |
| **ADR-02** | Event Communication | Publisher-Subscriber | Direct DOM Listeners in Controller, Custom Events | Strict decoupling of Views and Controllers | Slightly more indirect call stack | Application migrates to Redux |
| **ADR-03** | DOM Update Engine | In-Memory Virtual DOM Diffing | Full `innerHTML` Replacement | Eliminates image flickering & retains input focus | Modest CPU cycle cost on large lists | Lists exceed 1,000 items |
| **ADR-04** | Client-Side Routing | Browser Hash Routing (`#id`) | HTML5 History API (`pushState`) | Zero server-side fallback configuration needed | Fragile URL formatting | Server-rendered SEO required |
| **ADR-05** | Storage Engine | Browser LocalStorage | IndexedDB, WebSQL | Synchronous simplicity for bookmark IDs | 5MB storage ceiling | Storing full offline recipe images |
