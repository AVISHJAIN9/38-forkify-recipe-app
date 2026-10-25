# Gaps, Hardening & Technical Debt: Forkify

## Prioritized Improvement Roadmap

| Priority | Area | Current Implementation | Production Hardening Recommendation |
|---|---|---|---|
| **P1** | XSS Sanitization | Template strings inserted directly | Integrate **DOMPurify** to sanitize user-submitted and API-provided recipe strings before rendering. |
| **P2** | API Secret Concealment | `KEY` stored in public client-side `config.js` | Route upload requests through a serverless backend proxy (Vercel/Netlify Functions) to keep API keys confidential. |
| **P3** | Unit & Integration Testing | Manual browser testing | Implement automated unit tests for `model.js` and `View.prototype.update` using **Vitest** or **Jest** with JSDOM. |
| **P4** | Modern Bundler | Parcel 2 | Migrate to **Vite** for instant Hot Module Replacement (HMR) and optimized Rollup production builds. |
| **P5** | TypeScript Migration | Untyped JavaScript | Migrate codebase to **TypeScript** with strict interface typing for Recipe, Ingredient, and SearchState. |
