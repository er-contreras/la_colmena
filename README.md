⚠️Important! - Still in development, most of the code is on my computer
this is the first deployment

# La Colmena — Productivity & Learning Tracker
*A Rails-powered platform to track subjects, projects, and daily learning progress.*

La Colmena is a monolithic Ruby on Rails application designed to help users organize their subjects,
measure learning progress, and track achievements over time. The system is fully deployable using Docker and PostgreSQL.

---

## Live
- https://la-colmena.onrender.com/

---

## 🚀 Features
- Request specs with HTML responses
- PostgreSQL + Docker Compose setup for local and production environments
- Deployment-ready for Render.com

---

## 🧱 Tech Stack
- Ruby 3.4.7
- Ruby on Rails 8.1
- PostgreSQL 14+
- RSpec
- Docker & Docker Compose
- Makefile
- Render.com for deployment
- SCSS/SASS

---

## Gems
- https://github.com/rails/cssbundling-rails

---

## 📦 Installation

### Prerequisites
- Docker & Docker Compose installed
- Ruby (optional, if running without Docker)

### Clone the repository
```bash
git clone https://github.com/yourusername/la_colmena.git
cd la_colmena

sudo make setup
sudo docker compose run --rm web yarn build:css
```

## ⭐ Y aquí está lo más importante:
- 🔴 Render.com sí instala Node
- 🔴 Tu Dockerfile-prod no necesita Node (porque ya traes assets precompilados)
- 🔴 Tu Dockerfile-dev no tiene nada que ver con GitHub Actions
- 🔴 La Pull Request falla antes de hacer deploy

👉 El único lugar donde falta Node es en GitHub Actions.
