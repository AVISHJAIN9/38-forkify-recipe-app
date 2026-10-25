# Engineering Quality & Operations: Forkify

## Build & Toolchain Automation

Encapsulated in `ForkifyRecipeApp-Clean-Project/18-forkify/final/package.json`:

```json
{
  "scripts": {
    "start": "parcel index.html",
    "build": "parcel build index.html --dist-dir ./dist"
  }
}
```

```mermaid
flowchart LR
    Source["src/js/*.js + src/sass/main.scss"] --> Parcel[Parcel Bundler 2]
    Parcel --> Babel[Babel Transpiler + core-js Polyfills]
    Babel --> SWC[SWC Minifier]
    SWC --> Dist["Production Bundle in ./dist (HTML, CSS, JS)"]
```
