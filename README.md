# Rails, Nuxt.js, and JWT example application

> This is an example setup for a working prototype combinding Rails, Nuxt and Authentication.

## Installations

The Frontend was created with

```bash
npx create-nuxt-app frontend
# Settings:
# Programming language: JavaScript
# Package manager: Yarn
# UI Framework: Buefy
# Nuxt.js modules: Axios & PWA
# Linting: ESLint, Prettier, Lint stages files & StyleLint
# Testing Framework: Jest
```

## Setup

### Build images

```bash
docker-compose build
```

### Create Database

```bash
docker-compose run backend rails db:create
```

## Usage

```bash
docker-compose up
```

Backend env: [localhost:8080](http://localhost:8080)
Frontend env: [localhost:3000](http://localhost:3000)
