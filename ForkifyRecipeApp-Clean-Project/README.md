# Forkify // Recipe Application (Full-Stack MVC JavaScript)

A modern, responsive food and recipe web application built using modern JavaScript (ES6+), MVC architecture, Sass, and Parcel bundler. Users can search through over 1,000,000 recipes, adjust portion sizes with automatic ingredient scaling, bookmark favorite meals, and create custom recipe cards.

---

## ⚡ Quick Start Launchers (Windows)

| Launcher | Description |
| :--- | :--- |
| **`start-dev.bat`** | Double-click to launch Parcel development server at `http://localhost:1234` |
| **`build-app.bat`** | Compiles production assets into `18-forkify/final/dist/` |
| **`install-all.bat`** | Installs npm dependencies cleanly |

---

## 🚀 Key Features

- **Recipe Search**: Real-time querying against the Forkify API v2 (`https://forkify-api.jonas.io/api/v2/recipes/`).
- **Dynamic Servings Adjustment**: Increase or decrease servings on any recipe; ingredient quantities dynamically re-fraction and scale in real time.
- **Bookmarks Management**: Save favorite recipes with complete local persistence (`localStorage`) across browser sessions.
- **Custom Recipe Creation**: Modal form with automatic payload validation to upload and track your own recipes.
- **Pagination & Navigation**: Clean 10-result pagination with client-side hash routing (`#recipe_id`).
- **Production Build Ready**: Tested and bundled with Parcel 2 (`dist/index.html`, minified CSS, JS, and SVG sprite atlas).

---

## 📁 Project Architecture & Structure

The application strictly implements the **Model-View-Controller (MVC)** architectural pattern:

```
44-forkify-recipe-app/
├── 18-forkify/
│   ├── final/                          # Complete production-ready MVC application
│   │   ├── src/
│   │   │   ├── js/
│   │   │   │   ├── config.js           # API endpoints, timeout constants, pagination limits
│   │   │   │   ├── helpers.js          # AJAX wrappers, timeout guards, JSON handlers
│   │   │   │   ├── model.js            # State store, search logic, bookmark persistence
│   │   │   │   ├── controller.js       # App entry point; connects Model and Views
│   │   │   │   └── views/              # Modular DOM rendering classes
│   │   │   │       ├── View.js         # Parent class with spinner, errors, markup rendering
│   │   │   │       ├── recipeView.js   # Main detailed recipe card and serving controls
│   │   │   │       ├── searchView.js   # Search input submission listener
│   │   │   │       ├── resultsView.js  # Search result list rendering
│   │   │   │       ├── paginationView.js # Previous / Next page controls
│   │   │   │       ├── bookmarksView.js # Bookmarked recipes dropdown
│   │   │   │       ├── addRecipeView.js # Custom recipe upload modal
│   │   │   │       └── previewView.js  # Common preview card component
│   │   │   ├── sass/                   # Modular SCSS styling with variables and mixins
│   │   │   └── img/                    # Icons (SVG sprite), logo, and favicon
│   │   ├── dist/                       # Compiled production build output
│   │   └── package.json                # Dependencies and build scripts
│   └── starter/                        # Architecture diagrams & starter boilerplate
├── start-dev.bat                       # 1-click dev server launcher
├── build-app.bat                       # 1-click production builder
├── install-all.bat                     # 1-click npm installer
├── .gitignore                          # Clean ignore rules
└── README.md                           # Documentation & architecture guide
```

---

## 🛠️ Manual CLI Commands

```bash
cd 18-forkify/final
npm install
npm start          # Runs development server on port 1234
npm run build      # Generates optimized production build in ./dist
```

---

## 👤 Authors & Attribution

- **Original Creator & Architecture**: Jonas Schmedtmann ([Complete JavaScript Course](https://github.com/jonasschmedtmann))
- **Repository Integration**: [AVISHJAIN9/forkify-clone](https://github.com/AVISHJAIN9/forkify-clone)
- **API**: Powered by the official Forkify API v2 (`https://forkify-api.jonas.io`)
- **License**: ISC License
