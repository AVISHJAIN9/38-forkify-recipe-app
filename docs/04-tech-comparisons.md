# Technology Choice Comparisons & Trade-Off Analysis

## 1. Architectural Pattern: MVC vs Flux / Redux vs MVVM vs Component-Driven

| Metric | Chosen: Vanilla JS MVC | React + Redux | Angular (MVVM) | Vanilla Spaghetti Code |
|---|---|---|---|---|
| **Separation of Concerns** | Strict: Model (data), View (DOM), Controller (logic) | Action -> Dispatcher -> Store -> View | Two-way data binding via ViewModel | None; handlers mixed with DOM logic |
| **Runtime Dependencies** | **0 KB (Zero Framework Runtime)** | ~150 KB (React + Redux) | ~500 KB (Angular Core) | **0 KB** |
| **Event Decoupling** | Publisher-Subscriber Pattern | Flux Actions & Subscriptions | Observables (RxJS) | Direct DOM event callbacks |
| **Learning Rigor** | **Maximum** (Teaches software design fundamentals) | Medium (Framework-specific patterns) | Steep | Minimal |

- **Why I Used Vanilla MVC**: To implement enterprise-grade architectural design patterns from scratch, understanding data flow, event publishing, and DOM management without framework crutches.
- **Why I Did NOT Use Redux**: Introducing Redux would add excessive boilerplate and external library overhead to a focused client-side application.
- **30-Second Interview Answer**: "I chose the MVC architecture with a Publisher-Subscriber event model because it strictly enforces the single-responsibility principle: the Model owns all business state and API requests, the Views encapsulate DOM rendering, and the Controller acts as the orchestrator without either layer coupling to the other."

---

## 2. Bundler: Parcel vs Vite vs Webpack vs Rollup

| Metric | Chosen: Parcel 2 | Vite | Webpack 5 | Rollup |
|---|---|---|---|---|
| **Configuration** | **Zero-config out of the box** | Minimal (`vite.config.js`) | Heavy complex configuration | Complex manual plugins |
| **Asset Handling** | Native support for HTML, SCSS, SVG | Native ES modules with Rollup | Requires loaders (`sass-loader`, `file-loader`) | Geared for libraries |
| **Build Speed** | Fast (Rust-based SWC compiler) | Instant (esbuild dev, Rollup prod) | Slower cold builds | Moderate |

- **Why Parcel Was Used**: Parcel automatically handles Sass preprocessing, Babel transpilation, and asset bundling directly from `index.html` with zero configuration overhead.
