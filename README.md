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

### Install node packages (optional)

If you want to start the node server in development, you need to install the node_modules.

```bash
docker-compose run frontend yarn
```

### Create database

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

```bash
docker-compose up -d
```

The rails application runs on [localhost:8080](http://localhost:8080) and the frontend application on  [localhost:3000](http://localhost:3000).

### Frontend Development Mode

To enable HMR for the frontend, the node server should be started with `yarn dev`. To do this, add in the `docker-compose.override.yml` the following service:

```bash
version: '3'
services:
  frontend:
    volumes:
      - ./frontend:/app
    command: yarn dev
```

That means that your local directory is mounted and you might need to install the packages for local development as described in Setup > Install node packages.
