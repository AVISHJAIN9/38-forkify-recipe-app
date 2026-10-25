# AI Integration Analysis: Forkify Recipe App

## Current Status: No AI Integration

The repository currently contains **No AI integration**. Forkify relies on structured REST data returned from the external Forkify v2 API.

---

## Architectural Blueprint: AI Sous Chef & Smart Ingredient Substitutions

```mermaid
sequenceDiagram
    autonumber
    actor Chef as Home Cook
    participant Forkify as Forkify Recipe UI
    participant AIProxy as Cloudflare Worker AI Proxy
    participant Gemini as Google Gemini 1.5 Flash API

    Chef->>Forkify: Views 'Spaghetti Bolognese' but clicks "Substitute Beef"
    Forkify->>AIProxy: POST /api/ai/substitute { ingredient: 'minced beef', recipe: 'Bolognese' }
    AIProxy->>Gemini: Prompts Gemini with structured JSON schema
    Gemini-->>AIProxy: Returns { substitute: 'Brown lentils + Portobello mushrooms', ratio: '1:1', notes: 'Simmer 10 min longer' }
    AIProxy-->>Forkify: Sends JSON replacement payload
    Forkify->>Forkify: View.update() live swaps ingredient in DOM
```

### Proposed AI Capabilities
1. **AI Ingredient Substitution**: Automatically suggests allergen-friendly or dietary swaps (gluten-free, vegan) for any recipe ingredient.
2. **Nutritional Estimation**: Predicts calories, macronutrient splits (protein, fats, carbs), and glycemic index from unstructured ingredient text.
