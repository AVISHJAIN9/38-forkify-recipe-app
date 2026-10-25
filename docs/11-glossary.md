# Technical Glossary: Forkify Recipe App

- **Contextual Fragment**: A lightweight DOM document fragment created via `document.createRange().createContextualFragment(htmlString)` used for parsing markup without rendering to screen.
- **DOM Diffing**: The process of comparing a new virtual or in-memory DOM tree against the active DOM tree and applying mutations only where differences occur.
- **Hashchange Event**: A window event fired when the fragment identifier (hash `#`) of the URL changes, used in Forkify for lightweight client-side routing.
- **IsEqualNode**: A native DOM API method (`Node.prototype.isEqualNode()`) determining whether two DOM nodes are identical in type, attributes, and child content.
- **MVC (Model-View-Controller)**: An architectural pattern dividing software into the Model (business data), View (UI presentation), and Controller (application coordinator).
- **Publisher-Subscriber**: A behavioral design pattern where event-producing publishers notify event-handling subscribers without either having direct reference to the other.
- **Promise.race**: A JavaScript concurrency method accepting an iterable of promises and settling as soon as any input promise fulfills or rejects.
