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

### Install packages

```bash
docker-compose run frontend yarn
```

### Create Database

```bash
docker-compose run backend bash
> rails db:create
> rails db:migrate
```

### Authentication

```bash
docker-compose run backend bash
> rails g devise:install
> rails g devise user
> rails db:migrate
```

## Usage

To work on the frontend locally, we need to start the dev server to enable HMR.
Therefore we start the backend and the frontend separately:

```bash
docker-compose up -d backend
docker-compose run frontend yarn dev
```

Backend env: [localhost:8080](http://localhost:8080)

Frontend env: [localhost:3000](http://localhost:3000)
