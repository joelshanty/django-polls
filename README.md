# Django Polls

A Django application demonstrating a complete polling workflow, full CRUD experience, and production-aware configuration patterns.

## Overview

This project is a clean implementation of a polling app built with Django and also  illustrates the ability to build a complete web workflow: data model → views → templates → user actions. It includes:
- A public-facing poll list and detail view
- A voting workflow with optimistic vote updates
- Admin management for questions and choices
- Structured templates, static assets, and reusable app routing

- Uses Django class-based generic views for clean, maintainable request handling
- Implements relational models with `ForeignKey` associations and admin metadata
- Demonstrates form handling, server-side validation, and graceful error feedback
- Includes a development debugging toolchain via `django-debug-toolbar`
- Shows awareness of production database configuration and app separation


## Tech Stack

- Python 3.10
- Django 5.2
- PostgreSQL driver (`psycopg`) for production database support
- `django-debug-toolbar` for development diagnostics

## Architecture

- `polls/models.py` defines the data model for `Question` and `Choice`
- `polls/views.py` implements index, detail, results, and vote handling
- `polls/urls.py` routes the app under `/polls/`
- `mysite/settings.py` manages installed apps, middleware, templates, database, and static file settings
- `templates/` and `polls/templates/polls/` contain HTML templates for the UI
- `static/` holds CSS and image assets

## Features

- Poll listing with publish-date filtering
- Detail pages for each poll question
- Vote submission with POST handling and redirect-after-post
- Results display with vote counts
- Admin interface for managing polls and choices
- Debug toolbar integration during development

## Django project reference

The code in this repository was created with standard Django bootstrapping commands. These are useful reference notes for how the project was initialized and how Django generates the initial project structure.

- Install Django
  ```bash
  pip install django
  ```

- Generate a new Django project
  ```bash
  django-admin startproject mysite djangotutorial
  ```
  This creates a project called `mysite` inside a directory named `djangotutorial`, including:
  - project settings and database configuration
  - Django-specific runtime options
  - app registration and URL routing setup

- Create the polls application
  ```bash
  python manage.py startapp polls
  ```
  This creates the `polls` app and scaffolds model, view, template, and admin integration files.

- Run the development server
  ```bash
  python manage.py runserver
  ```

- Create a Django superuser for admin access
  ```bash
  python manage.py createsuperuser
  ```

## Setup

1. Clone the repository
   ```bash
   git clone <repo-url>
   cd django-polls
   ```

2. Create, activate a virtual environment and install dependencies
   ```bash
   ./setup.sh
   ```

3. Configure the database

   The current settings are prepared for PostgreSQL. For local development, update `mysite/settings.py` and update db name, username, and password or use SQLite by setting:
   ```python
   DATABASES = {
       'default': {
           'ENGINE': 'django.db.backends.sqlite3',
           'NAME': BASE_DIR / 'db.sqlite3',
       }
   }
   ```

4. Create a superuser
   ```bash
   python manage.py createsuperuser
   ```

5. Activate virtual environment, run migrations if any, and start the server
   ```bash
   ./run.sh
   ```

6. Run tests
   ```bash
   ./run_tests.sh
   ```

7. Open the app
   - Public polls: `http://127.0.0.1:8000/polls/`
   - Admin panel: `http://127.0.0.1:8000/admin/`

## Testing and Validation

- The application follows Django best practices for URL routing, views, models, and templates
- Admin display metadata and query filtering provide a robust backend management experience
- Vote submission uses `HttpResponseRedirect` to prevent duplicate POST submissions
