# Project Pitch: Forkify Recipe App

## 30-Second Elevator Pitch
"I engineered Forkify, a modern Single Page Application built with pure Vanilla JavaScript (ES6+) that replicates the architectural rigor of frameworks like React without external framework runtime overhead. Employing a strict Model-View-Controller architecture paired with the Publisher-Subscriber pattern, Forkify features live recipe searches, fractional ingredient portion scaling, custom recipe creation via the Forkify v2 REST API, and an in-house virtual DOM element-diffing engine that updates the screen at sub-millisecond speeds without UI flickering."

---

## 2-Minute Technical Interview Pitch
"The inspiration behind Forkify was to master the fundamentals of complex web application architecture from first principles, rather than blindly relying on React or Vue abstractions. I wanted to build a production-grade client application that solved common culinary problems: search discovery, instant recipe portion scaling, custom recipe management, and persistent offline bookmarks.

To accomplish this cleanly, I structured the codebase around the MVC (Model-View-Controller) design pattern. The Model manages application state—including the active recipe, search queries, pagination offsets, and bookmarks—and encapsulates all API interactions and LocalStorage persistence. The View layer is architected using classical ES6 inheritance, with seven specialized view classes extending from a common `View` base class. Communication between the Controller and Views is handled strictly via the Publisher-Subscriber pattern: views subscribe to DOM events and publish notifications to controller handlers, ensuring complete decoupling.

A core technical highlight is the custom DOM diffing algorithm I implemented in `View.prototype.update`. Instead of re-rendering entire markup strings—which destroys form focus, resets scroll positions, and causes image flickering—my diffing engine generates an in-memory virtual DOM fragment, compares incoming nodes with active DOM elements using `isEqualNode()`, and updates only the text content and altered attributes. Combined with fractional ingredient math via the `fracty` library, promise-race network timeouts, and hash-based client routing, Forkify demonstrates senior-level mastery of Vanilla JavaScript internals and reactive UI engineering."
