# Step-by-Step Rebuild Guide: Forkify Recipe App

Constructing Forkify from scratch in strict architectural dependency order:

```mermaid
flowchart TD
    S1[Step 1: Setup Parcel, Babel & Polyfills] --> S2[Step 2: Configuration & Helpers AJAX/Timeout]
    S2 --> S3[Step 3: Base View Class View.js]
    S3 --> S4[Step 4: Recipe View & Hashchange Controller]
    S4 --> S5[Step 5: Search View & Results Pagination]
    S5 --> S6[Step 6: Virtual DOM Diffing Algorithm]
    S6 --> S7[Step 7: LocalStorage Bookmarking System]
    S7 --> S8[Step 8: Custom Recipe Upload Modal & Form Validation]
```

### Key Snippet: Custom AJAX Engine with Promise.race Timeout (`src/js/helpers.js`)

```javascript
import { TIMEOUT_SEC } from './config.js';

const timeout = function (s) {
  return new Promise(function (_, reject) {
    setTimeout(function () {
      reject(new Error(`Request took too long! Timeout after ${s} second`));
    }, s * 1000);
  });
};

export const AJAX = async function (url, uploadData = undefined) {
  try {
    const fetchPro = uploadData
      ? fetch(url, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(uploadData),
        })
      : fetch(url);

    const res = await Promise.race([fetchPro, timeout(TIMEOUT_SEC)]);
    const data = await res.json();

    if (!res.ok) throw new Error(`${data.message} (${res.status})`);
    return data;
  } catch (err) {
    throw err;
  }
};
```
