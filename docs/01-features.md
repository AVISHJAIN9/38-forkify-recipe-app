# Master Feature Inventory: Forkify Recipe App

## Subsystem Matrix

| Feature ID | Feature Name | Core Implementation Files | Primary Architectural Mechanism |
|---|---|---|---|
| **F1** | Recipe Search & Pagination | `searchView.js`, `resultsView.js`, `paginationView.js`, `model.js:L53` | Query fetching via `AJAX()`, slice-based pagination array math, dynamic preview rendering. |
| **F2** | Hash-Based Deep Linking | `recipeView.js:L35`, `controller.js:L19`, `model.js:L24` | `window.addEventListener('hashchange')` routing, state hydration, dynamic HTML template generation. |
| **F3** | Portion Scaling & Virtual DOM Diffing | `recipeView.js:L40`, `model.js:L75`, `View.js:L30` | Linear portion multiplier math, virtual DOM node comparison via `isEqualNode()`, zero-flicker updating. |
| **F4** | Bookmark Persistence | `bookmarksView.js`, `model.js:L89`, `controller.js:L68` | `localStorage` serialization, array search / toggle, dropdown preview rendering. |
| **F5** | Custom Recipe Upload Engine | `addRecipeView.js`, `model.js:L115`, `controller.js:L84` | `FormData` parsing, ingredient string validation regex, `AJAX` POST request with API developer key. |
| **F6** | Reusable Base View & Feedback States | `View.js:L49-L73` | Unified spinner animation, user error toast rendering, success message dispatch. |

---

## Detailed Feature Specifications

### F1: Recipe Search & Paginated Discovery
- **User Facing Behavior**: Search for any ingredient (e.g. "avocado"); shows total count across paginated 10-item pages with forward and back navigation.
- **Trace**: `searchView.getQuery()` -> `model.loadSearchResults(query)` -> `resultsView.render(model.getSearchResultsPage())` -> `paginationView.render(model.state.search)`.
- **Say It Out Loud**:
> "I implemented the recipe search feature using the Publisher-Subscriber pattern in `searchView.js` and `controller.js`. When the user submits a search query, `searchView` extracts the input value and publishes an event to `controlSearchResults`. The controller triggers a loading spinner and invokes `model.loadSearchResults`, which fetches data from the Forkify API using our custom `AJAX` wrapper. Once received, the model stores the results in state and resets the pagination offset to page one. The controller then slices the first ten results and instructs `resultsView` and `paginationView` to render, enabling seamless browsing without full page refreshes."

---

### F3: Portion Scaling & Virtual DOM Diffing
- **User Facing Behavior**: Clicking servings `+` or `-` adjusts recipe ingredient amounts proportionally in real time without screen flicker or reloading images.
- **Trace**: `recipeView.addHandlerUpdateServings` -> `model.updateServings(newServings)` -> `recipeView.update(model.state.recipe)`.
- **Virtual DOM Diffing (`View.js:L30`)**:
```javascript
const newDOM = document.createRange().createContextualFragment(newMarkup);
const newElements = Array.from(newDOM.querySelectorAll('*'));
const curElements = Array.from(this._parentElement.querySelectorAll('*'));

newElements.forEach((newEl, i) => {
  const curEl = curElements[i];
  if (!newEl.isEqualNode(curEl) && newEl.firstChild?.nodeValue.trim() !== '') {
    curEl.textContent = newEl.textContent;
  }
  if (!newEl.isEqualNode(curEl)) {
    Array.from(newEl.attributes).forEach(attr =>
      curEl.setAttribute(attr.name, attr.value)
    );
  }
});
```
- **Say It Out Loud**:
> "To adjust recipe servings dynamically, I built an ingredient scaling engine in `model.js` paired with an in-house DOM diffing algorithm in `View.js`. When the user clicks the plus or minus servings button, the model recalculates every ingredient quantity using linear proportional scaling. Instead of calling `innerHTML` to rebuild the entire recipe pane—which causes visible image flickering and destroys focus—I implemented `View.prototype.update`. It generates an off-screen virtual DOM fragment, loops through every child node comparing them with `isEqualNode()`, and updates only the exact text nodes and attributes that changed. The UI updates in under sixteen milliseconds with zero layout jank."

---

### F4: Persistent Bookmarks Engine
- **User Facing Behavior**: Users can bookmark favorite recipes with a single click. Bookmarks are stored across browser sessions and listed in a navigation dropdown.
- **Trace**: `model.addBookmark(recipe)` -> `model.persistBookmarks()` -> `bookmarksView.render(model.state.bookmarks)`.
- **Say It Out Loud**:
> "For bookmarking in `bookmarksView.js` and `model.js`, I created a persistent client-side storage engine. When the user clicks the bookmark button, the controller verifies whether the recipe is already bookmarked. If not, it pushes the recipe object into the `state.bookmarks` array and flags `recipe.bookmarked = true`. I serialize this array to `localStorage` so user favorites survive browser restarts. When the application boots, `model.init` reads from `localStorage` and restores the bookmarks list, while `bookmarksView` renders them directly into the navigation dropdown."
