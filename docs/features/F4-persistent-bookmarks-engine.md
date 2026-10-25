# F4: Persistent Bookmarks Engine

## Overview & Architecture
Stores user favorite recipes in browser `localStorage` and synchronizes the active recipe bookmark toggle button.

```mermaid
flowchart LR
    ClickBookmark[Click Bookmark Button] --> ToggleState[model.addBookmark / deleteBookmark]
    ToggleState --> LocalStorage[localStorage.setItem('bookmarks')]
    ToggleState --> BookmarksDropdown[bookmarksView.render]
    ToggleState --> RecipeBtn[recipeView.update]
```

## Say It Out Loud
> "For bookmarking in `bookmarksView.js` and `model.js`, I created a persistent client-side storage engine. When the user clicks the bookmark button, the controller verifies whether the recipe is already bookmarked. If not, it pushes the recipe object into the `state.bookmarks` array and flags `recipe.bookmarked = true`. I serialize this array to `localStorage` so user favorites survive browser restarts. When the application boots, `model.init` reads from `localStorage` and restores the bookmarks list, while `bookmarksView` renders them directly into the navigation dropdown."
