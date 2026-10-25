# Codebase Anatomy & Project Map

## Directory Tree

```
44-forkify-recipe-app/
├── ForkifyRecipeApp-Clean-Project/
│   ├── README.md                           # Project quickstart & batch commands
│   ├── 18-forkify/
│   │   ├── starter/                        # Original course starter files
│   │   └── final/                          # Complete production application
│   │       ├── index.html                  # Master semantic application template
│   │       ├── package.json                # Bundler dependencies & npm build scripts
│   │       ├── package-lock.json           # Deterministic dependency lockfile
│   │       └── src/
│   │           ├── img/                    # Icons SVG sprite, logo, favicon
│   │           ├── sass/                   # Modular SCSS stylesheets
│   │           └── js/                     # Modular ES6+ JavaScript Core
│   │               ├── config.js           # Global constants (API_URL, TIMEOUT_SEC, KEY)
│   │               ├── helpers.js          # AJAX fetch wrapper with Promise.race timeout
│   │               ├── model.js            # Central state store, API fetchers, LocalStorage
│   │               ├── controller.js       # Application orchestrator & event handler router
│   │               └── views/              # View Layer (ES6 Class Hierarchy)
│   │                   ├── View.js         # Base class (DOM diffing, spinner, error handlers)
│   │                   ├── recipeView.js   # Central recipe hero & ingredients display
│   │                   ├── searchView.js   # Search input & form submission listeners
│   │                   ├── resultsView.js  # Search results list container
│   │                   ├── paginationView.js # Prev / Next page navigation controls
│   │                   ├── bookmarksView.js  # Saved recipes dropdown list
│   │                   ├── addRecipeView.js  # Modal window for uploading user recipes
│   │                   └── previewView.js  # Reusable recipe preview card renderer
└── docs/                                   # Interview-Ready Documentation Portal
```

---

## Dependency & Toolchain Directory

| Package Name | Exact Version | Type | Architectural Purpose in Forkify |
|---|---|---|---|
| `core-js` | `^3.24.1` | `dependency` | Comprehensive polyfill suite for modern ECMAScript standards (Promises, Array methods, Symbols). |
| `fracty` | `^0.0.3` | `dependency` | Converts decimal numbers into clean fractional strings (e.g. `0.5` -> `1/2`) for culinary ingredient portioning. |
| `regenerator-runtime` | `^0.13.9` | `dependency` | Polyfill supporting compiled async/await generators across legacy browser targets. |
| `parcel` | `^2.6.2` | `devDependency` | Zero-configuration web application bundler with fast hot module replacement (HMR). |
| `@parcel/transformer-sass`| `^2.6.2` | `devDependency` | Parcel plugin compiling SASS source files into native CSS. |

---

## Global Configuration & Constants (`config.js`)

| Constant Name | Value | Purpose |
|---|---|---|
| `API_URL` | `'https://forkify-api.jonas.io/api/v2/recipes/'` | Base REST endpoint for Forkify recipe catalog. |
| `TIMEOUT_SEC` | `10` | Maximum network wait time before triggering Promise.race timeout abort. |
| `RES_PER_PAGE` | `10` | Number of search results rendered per pagination page. |
| `KEY` | `'<YOUR_KEY>'` | API developer key for authoring and deleting custom user recipes. |
| `MODAL_CLOSE_SEC` | `2.5` | Delay in seconds before auto-closing the recipe upload modal on success. |
