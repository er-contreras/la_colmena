# La Colmena — Productivity & Learning Tracker API
*A Rails-powered platform to track subjects, projects, and daily learning progress.*

La Colmena is a monolithic Ruby on Rails application designed to help users organize their subjects, measure learning progress, and track achievements over time. The system exposes a clean, versioned JSON API and is fully deployable using Docker and PostgreSQL.

---

## 🚀 Features
- Versioned JSON API (`/api/v1/...`)
- Fast JSON serialization using **Panko**
- Request specs with JSON schema validation
- PostgreSQL + Docker Compose setup for local and production environments
- Deployment-ready for Render.com
- API-first structure suitable for React, mobile apps, or PWAs

---

## 🧱 Tech Stack
- Ruby on Rails 7
- PostgreSQL 14+
- Panko Serializers
- RSpec + json_matchers
- Docker & Docker Compose
- Render.com for deployment

---

## 📦 Installation

### Prerequisites
- Docker & Docker Compose installed
- Ruby (optional, if running without Docker)

### Clone the repository
```bash
git clone https://github.com/yourusername/la_colmena.git
cd la_colmena

