# F2: Hash-Based Deep Linking & Recipe Details

## Overview & Architecture
Listens to browser window `hashchange` events to dynamically fetch and render detailed ingredients and preparation times.

```mermaid
flowchart TD
    HashEvent[window hashchange or load] --> ReadID[Extract window.location.hash.slice(1)]
    ReadID --> Ctrl[controller.controlRecipes]
    Ctrl --> Model[model.loadRecipe]
    Model --> Render[recipeView.render]
```

## Say It Out Loud
> "For recipe navigation, I implemented client-side routing using native browser URL hash identifiers. Whenever a user clicks any recipe card or pastes a direct link with an ID hash, `recipeView` captures the `hashchange` and `load` events and notifies `controlRecipes`. The controller extracts the recipe ID, calls `model.loadRecipe`, and passes the hydrated recipe object to `recipeView`. Because the URL reflects the active recipe ID, users can bookmark direct recipe URLs or use the browser back and forward buttons naturally without breaking application state."
