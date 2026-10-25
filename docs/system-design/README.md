# System Design & Scalability: Forkify Recipe App

This section examines how Forkify scales from a client-side Single Page Application to an enterprise culinary platform serving millions of recipes globally.

```mermaid
flowchart TD
    Client[Forkify SPA Client] --> Edge[Cloudflare CDN & Cache Edge]
    Edge --> APIGateway[AWS API Gateway]
    APIGateway --> RecipeService[Recipe Service Microservice]
    APIGateway --> SearchService[Elasticsearch / OpenSearch Cluster]
    RecipeService --> Redis[(Redis Cache: Hot Recipes)]
    RecipeService --> DB[(PostgreSQL: Recipe Catalog)]
```

### Module Index
- [14.1 Requirements & Capacity Estimation](/system-design/14.1-requirements-and-estimation)
- [14.2 Architecture Styles](/system-design/14.2-architecture-styles)
- [14.3 Networking & REST Protocols](/system-design/14.3-networking-and-communication)
- [14.4 Load Balancing & Client Hydration](/system-design/14.4-load-balancing-and-scaling)
- [14.5 Database Systems & Caching](/system-design/14.5-databases-and-storage)
- [14.6 Caching Strategies & Stale-While-Revalidate](/system-design/14.6-caching)
- [14.7 Asynchronous Recipe Ingestion](/system-design/14.7-messaging-and-queues)
- [14.8 Concurrency & LocalStorage Synchronization](/system-design/14.8-consistency-and-concurrency)
- [14.9 Reliability, Timeouts & Circuit Breakers](/system-design/14.9-reliability-and-resilience)
- [14.10 API Rate Limiting & Developer Keys](/system-design/14.10-api-design-and-rate-limiting)
- [14.11 Security Architecture & XSS Defenses](/system-design/14.11-security-architecture)
- [14.12 Search Indexing & Dietary Matching](/system-design/14.12-search-and-ai-architecture)
- [14.13 Real-Time Collaborative Cooking](/system-design/14.13-real-time-systems)
- [14.14 Observability & Real-User Monitoring](/system-design/14.14-observability-and-operations)
- [14.15 Performance Engineering & Bundle Splitting](/system-design/14.15-performance-engineering)
- [14.16 Cost & Cloud Economics](/system-design/14.16-cost-and-trade-offs)
- [14.17 Classic System Designs Applied](/system-design/14.17-classic-system-design)
- [Architectural Decision Records (ADRs)](/system-design/decisions)
