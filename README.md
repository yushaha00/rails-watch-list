# Rails Watch List

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Rails Watch List is a movie watchlist application where users can create lists and bookmark movies to those lists. Built with Rails 7.1, PostgreSQL, and Bootstrap 5.

## Common Commands

```bash
# Setup database
bin/rails db:create db:migrate db:seed

# Start development server
bin/rails server

# Run all tests
bundle exec rspec

# Run a single test file
bundle exec rspec spec/models/list_spec.rb

# Run a specific test by line number
bundle exec rspec spec/models/list_spec.rb:14

# Rails console
bin/rails console
```

## Architecture

### Data Model

Three models with a many-to-many relationship through bookmarks:

- **Movie** - has title, overview, poster_url, rating. Movies can belong to many lists.
- **List** - has name, image_url. Lists can contain many movies.
- **Bookmark** - join model with comment field. Links movies to lists. Enforces uniqueness of movie per list.

```
Movie <-->> Bookmark <<--> List
```

### Routes

Nested resources pattern:
- `resources :lists` (index, show, new, create)
- `resources :bookmarks` nested under lists (new, create, destroy)

### Frontend

- Bootstrap 5 with sassc-rails
- Font Awesome icons
- SimpleForm for form generation
- Hotwire (Turbo + Stimulus) for interactivity
