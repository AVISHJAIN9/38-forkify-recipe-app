# API Reference: Forkify v2 REST API

## External Endpoints Consumed

| HTTP Method | URL Path | Query / Payload | Purpose | Auth / Key |
|---|---|---|---|---|
| `GET` | `https://forkify-api.jonas.io/api/v2/recipes/:id` | `?key=<KEY>` | Retrieves complete recipe details by ID. | Optional |
| `GET` | `https://forkify-api.jonas.io/api/v2/recipes` | `?search=:query&key=<KEY>` | Searches catalog by ingredient / food query. | Optional |
| `POST` | `https://forkify-api.jonas.io/api/v2/recipes` | `?key=<KEY>` + JSON Recipe Payload | Publishes a custom user recipe. | Required |

---

## Sample Request & Response Payloads

### POST Recipe Payload
```json
{
  "title": "Avocado Artisanal Sourdough",
  "source_url": "https://example.com/avocado-toast",
  "image_url": "https://images.unsplash.com/photo-1525351484163-7529414344d8",
  "publisher": "Chef Jane Doe",
  "cooking_time": 15,
  "servings": 2,
  "ingredients": [
    {"quantity": 2, "unit": "slices", "description": "sourdough bread"},
    {"quantity": 1, "unit": "", "description": "ripe avocado"},
    {"quantity": 0.5, "unit": "tsp", "description": "sea salt"}
  ]
}
```

### Success Response (`200 OK`)
```json
{
  "status": "success",
  "data": {
    "recipe": {
      "id": "62e0f1e8a946c10016a2ef18",
      "title": "Avocado Artisanal Sourdough",
      "publisher": "Chef Jane Doe",
      "source_url": "https://example.com/avocado-toast",
      "image_url": "https://images.unsplash.com/photo-1525351484163-7529414344d8",
      "servings": 2,
      "cooking_time": 15,
      "ingredients": [
        {"quantity": 2, "unit": "slices", "description": "sourdough bread"},
        {"quantity": 1, "unit": "", "description": "ripe avocado"},
        {"quantity": 0.5, "unit": "tsp", "description": "sea salt"}
      ],
      "key": "b0257ad4-82a1-432d-84c1-4b72ef783912"
    }
  }
}
```
